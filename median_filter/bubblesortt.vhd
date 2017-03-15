
-- VHDL Test Bench Created from source file bubble_sort.vhd -- 15:14:16 09/26/2013
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bubble_sort_bubblesortt_vhd_tb IS
END bubble_sort_bubblesortt_vhd_tb;

ARCHITECTURE behavior OF bubble_sort_bubblesortt_vhd_tb IS 

	COMPONENT bubble_sort
	PORT(
		rst_n : IN std_logic;
		mat0 : IN std_logic_vector(7 downto 0);
		mat1 : IN std_logic_vector(7 downto 0);
		mat2 : IN std_logic_vector(7 downto 0);
		mat3 : IN std_logic_vector(7 downto 0);
		mat4 : IN std_logic_vector(7 downto 0);
		mat5 : IN std_logic_vector(7 downto 0);
		mat6 : IN std_logic_vector(7 downto 0);
		mat7 : IN std_logic_vector(7 downto 0);
		mat8 : IN std_logic_vector(7 downto 0);          
		out_pixel : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	SIGNAL rst_n :  std_logic;
	SIGNAL mat0 :  std_logic_vector(7 downto 0);
	SIGNAL mat1 :  std_logic_vector(7 downto 0);
	SIGNAL mat2 :  std_logic_vector(7 downto 0);
	SIGNAL mat3 :  std_logic_vector(7 downto 0);
	SIGNAL mat4 :  std_logic_vector(7 downto 0);
	SIGNAL mat5 :  std_logic_vector(7 downto 0);
	SIGNAL mat6 :  std_logic_vector(7 downto 0);
	SIGNAL mat7 :  std_logic_vector(7 downto 0);
	SIGNAL mat8 :  std_logic_vector(7 downto 0);
	SIGNAL out_pixel :  std_logic_vector(7 downto 0);

BEGIN

	uut: bubble_sort PORT MAP(
		rst_n => rst_n,
		mat0 => mat0,
		mat1 => mat1,
		mat2 => mat2,
		mat3 => mat3,
		mat4 => mat4,
		mat5 => mat5,
		mat6 => mat6,
		mat7 => mat7,
		mat8 => mat8,
		out_pixel => out_pixel
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	    rst_n => '1',
		mat0 => "00000001",
		mat1 => "00000010",
		mat2 => "00000100",
		mat3 => "00001000",
		mat4 => "00010000",
		mat5 => "00100000",
		mat6 => "01000000",
		mat7 => "10000000",
		mat8 => "10000001",
		
	);


      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
