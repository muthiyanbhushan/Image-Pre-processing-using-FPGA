----------------------------------------------------------------------------------
-- transmitter to check on board with  no errors and with warnings
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:38:48 03/23/2014 
-- Design Name: 
-- Module Name:    trans - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trans is
    Port ( 
		TXD 	: inout std_logic  	:= '1';					
    	CLK 	: in  std_logic;							
		DBIN 	: in  std_logic_vector (7 downto 0);	
		TBE	: IN std_logic ;					
		RST		: in  std_logic;
		frame : out std_logic_vector(10 downto 0));	
end trans;

architecture Behavioral of trans is
	type tstate is (
		sttIdle,			
		sttTransfer,	
		sttShift		
		);
		
	constant baudDivide : std_logic_vector(8 downto 0) := "111010011"; 	
																							
	signal tfReg	:  std_logic_vector(7 downto 0);								
	signal tfSReg  :  std_logic_vector(10 downto 0) 	:= "11111111111";	
	signal clkDiv	:  std_logic_vector(8 downto 0)	:= "000000000";		
	--signal rClkDiv :  std_logic_vector(3 downto 0)	:= "0000";				
	signal tfCtr	:  std_logic_vector(3 downto 0)	:= "0000";			
	--signal rClk	:  std_logic := '0';					
	signal tClk	:  std_logic:='0';									
	signal load	:  std_logic := '0';
	signal shift	:  std_logic := '0';
	signal par	:  std_logic;
   signal tClkRST	:  std_logic := '0';
	--signal sframe : std_logic_vector(10 downto 0):="00000000000";
	signal sttCur  :  tstate := sttIdle;			
	signal sttNext :  tstate;				
		

begin
	tfReg <= DBIN;
	par <=  not ( ((tfReg(0) xor tfReg(1)) xor (tfReg(2) xor tfReg(3))) xor ((tfReg(4) xor tfReg(5)) xor (tfReg(6) xor tfReg(7))) );


-- clock division code
	process (CLK, clkDiv)	    					
		begin
			if (Clk = '1' and Clk'event) then
				if (clkDiv = baudDivide) then
				tClk <= not tClk;
					clkDiv <= "000000000";
				
				else
				tClk <= tClk;
					clkDiv <= clkDiv +1;
				end if;
			end if;
		end process;
		
		
--process (rClk)	  								    
--	begin
--		if (rClk = '1' and rClk'event) then
--				rClkDiv <= rClkDiv +1;
--			end if;
--	end process;
--	tClk <= rClkDiv(3);	
	
-- setting counter
 process (tClk, tClkRST)	 					
		begin
			if (tClk = '1' and tClk'event) then
				if tClkRST = '1' then
					tfCtr <= "0000";
				else
					tfCtr <= tfCtr +1;
				end if;
			end if;
		end process;

-- loading shift register
	process (load, shift, tClk, tfSReg)
		begin
			TXD <= tfsReg(0);
			if (tClk = '1' and tClk'Event) then
				if (load = '1') then
					tfSReg (10 downto 0) <= ('1' & (par) & (tfReg(7 downto 0)) &'0');
				end if;
				if shift = '1' then
								  
					tfSReg (10 downto 0) <= ('1' & (tfSReg(10 downto 1)));
				end if;
			end if;
		end process;
		
		process(tclk,txd,shift)
		variable count: integer:=0;
		begin
		if (tclk'event and tclk='1') then
		if(shift='1')then
		if(count< 11) then
		--sframe(count)<=txd;
		frame(count)<=txd;
		count:= count+ 1;
		--else
		--frame<=sframe;
		end if;
		end if;
		end if;
		end process;

-- setting the states of the transmitter
	process (tClk, RST)
		begin
			if (tClk = '1' and tClk'Event) then
				if RST = '1' then
					sttCur <= sttIdle;
				else
					sttCur <= sttNext;
				end if;
			end if;
		end process;
		
		-- case statement for different states
	process (sttCur, tfCtr, tfReg, TBE, tclk)
		begin   	   

			case sttCur is
			
				when sttIdle =>
					--tClkRST <= '0';
					shift <= '0';
					load <= '0';
					if TBE = '0' then    --TBE is active low
						sttNext <= sttIdle;
					else
						sttNext <= sttTransfer;
					end if;	

				when sttTransfer =>	
					shift <= '0';
					load <= '1';
					--tClkRST <= '1';		
					sttNext <= sttShift;
					

				when sttShift =>
					shift <= '1';
					load <= '0';
					tClkRST <= '0';
					if tfCtr = "1010" then
						sttNext <= sttIdle;
					else
						sttNext <= sttShift;
					end if;
			end case;
		end process;						 	
			
end Behavioral;
