----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:22 03/22/2014 
-- Design Name: 
-- Module Name:    median - Behavioral 
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
use IEEE.MATH_REAL.ALL;
use ieee.numeric_std.all;	
	entity sort_1 is
		  port( rst_n     : in std_logic:='0';
			  Input      : in std_logic_vector(7 downto 0);
			  Enable      : in std_logic;
			  out_pixel : out std_logic_vector(7 downto 0):=(others=>'0');
			  temp1 : out std_logic_vector(7 downto 0));
		  end sort_1;
		
		architecture  behavioural of sort_1 is 
			type matrix is array (0 to 8)    of  std_logic_vector (7 downto 0);
			signal mat_temp : matrix := (others    => "00000000");
			signal start : std_logic := '0';
		
		begin
		
		process(Enable)
		variable count : integer:=0;
		begin
		if (Enable = '1') then
			mat_temp(count) <= Input;
			if(count = 8) then
			count := 0;
			start <= '1';
			else
			count := count + 1;
			end if;
		end if;
		end process;
		
		process(rst_n, mat_temp)
		 variable temp_mat: matrix := (others    => "00000000");
		 variable temp      : std_logic_vector(7 downto 0):=(others =>'0');
		begin
		case rst_n is
		 when '0' =>
			temp_mat  := (others =>"00000000");
			temp      := (others =>'0');
			out_pixel <= (others =>'1');
		when '1' =>
			if(start = '1') then
			temp_mat :=  mat_temp;
				loop1: for i in 0 to 7 loop
				loop2: for j in 0 to 6 loop
						  if(temp_mat(j+1)>temp_mat(j)) then             
							 temp        := temp_mat(j);
							 temp_mat(j) := temp_mat(j+1);
							 temp_mat(j+1) := temp;               
						  else
							NULL;
						end if;	
						end loop loop2;
					end loop loop1;
					out_pixel <=  temp_mat(1);
									          --outpixel gives median value
			end if;
					
		when others => null;
		end case;
		temp1 <=temp;
		end process;
		end  behavioural;


