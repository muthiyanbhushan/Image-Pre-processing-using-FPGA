--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:25:36 06/08/2013
-- Design Name:   
-- Module Name:   D:/PROJECT/CODES/average/avg_tb.vhd
-- Project Name:  average
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: average
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY avg_tb IS
END avg_tb;
 
ARCHITECTURE behavior OF avg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT average
    PORT(
         rst_n : IN  std_logic;
         Mat0 : IN  std_logic_vector(7 downto 0);
         Mat1 : IN  std_logic_vector(7 downto 0);
         Mat2 : IN  std_logic_vector(7 downto 0);
         Mat3 : IN  std_logic_vector(7 downto 0);
         Mat4 : IN  std_logic_vector(7 downto 0);
         Mat5 : IN  std_logic_vector(7 downto 0);
         Mat6 : IN  std_logic_vector(7 downto 0);
         Mat7 : IN  std_logic_vector(7 downto 0);
         Mat8 : IN  std_logic_vector(7 downto 0);
         out_pixel : OUT  std_logic_vector(7 downto 0);
         valid : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst_n : std_logic := '0';
   signal Mat0 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat2 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat3 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat4 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat5 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat6 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat7 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mat8 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_pixel : std_logic_vector(7 downto 0);
   signal valid : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: average PORT MAP (
          rst_n => rst_n,
          Mat0 => Mat0,
          Mat1 => Mat1,
          Mat2 => Mat2,
          Mat3 => Mat3,
          Mat4 => Mat4,
          Mat5 => Mat5,
          Mat6 => Mat6,
          Mat7 => Mat7,
          Mat8 => Mat8,
          out_pixel => out_pixel,
          valid => valid
        );

  
	    rst_n <= '0','1'after 20 ns;
   -- Stimulus process
   stim_proc: process
   begin		
		mat0 <= "01101001";
		mat1 <= "01101100";
		mat2 <= "01101110";
		mat3 <= "01100110";
		mat4 <= "01100011";
		mat5 <= "01100100";
		mat6 <= "01101000";
		mat7 <= "01100101"; 
		mat8 <= "01100111";   

      wait;
   end process;

END;

