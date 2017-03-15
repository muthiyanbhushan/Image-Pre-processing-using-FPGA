----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:29:53 06/08/2013 
-- Design Name: 
-- Module Name:    average - Behavioral_average 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity average is
port(rst_n     : in std_logic:='0';
			  Mat0      : in std_logic_vector(7 downto 0);
			  Mat1      : in std_logic_vector(7 downto 0);
			  Mat2      : in std_logic_vector(7 downto 0);
			  --Mat3      : in std_logic_vector(7 downto 0);
			  --Mat4      : in std_logic_vector(7 downto 0);
			  --Mat5      : in std_logic_vector(7 downto 0);
			  --Mat6      : in std_logic_vector(7 downto 0);
			  --Mat7      : in std_logic_vector(7 downto 0);
			  --Mat8      : in std_logic_vector(7 downto 0);
			  out_pixel : out std_logic_vector(7 downto 0):=(others=>'0');
			  valid : out std_logic := '0' 
);

end average;

----------------------------------------------------------------------------------
--architecture for averaging
----------------------------------------------------------------------------------
architecture Behavioral_average of average is		
	constant rotate:integer := 1;
			type matrix is array (0 to 2)    of  std_logic_vector (7 downto 0);
			signal mat_temp    : matrix := (others    => "00000000");
		 
		begin
		  mat_temp(0) <= Mat0;
		  mat_temp(1) <= Mat1;
		  mat_temp(2) <= Mat2;
		 -- mat_temp(3) <= Mat3;
		  --mat_temp(4) <= Mat4;
		  --mat_temp(5) <= Mat5;
		  --mat_temp(6) <= Mat6;
		  --mat_temp(7) <= Mat7;
		  --mat_temp(8) <= Mat8;

		process(rst_n, mat_temp)
			variable temp_mat    : matrix := (others    => "00000000");
			variable temp,temp2,temp3:integer;
			variable t1,t2: bit_vector(7 downto 0);
			variable t3:std_logic_vector(7 downto 0);
		begin
		
		case rst_n is
		 when '0' =>
			temp_mat  := (others =>"00000000");
			valid <= '0';
		when '1' =>
			temp_mat :=  mat_temp;			
			loop1:for i in 0 to 2 loop
				t1 := to_bitvector(temp_mat(i));
				t2 := to_bitvector(temp_mat(i+1));
				t1 := t1 srl rotate;
				t2 := t2 srl rotate;
				temp2 := conv_integer(to_stdlogicvector(t1));
				temp3 := conv_integer(to_stdlogicvector(t2));
				temp := temp2 + temp3;	
				temp_mat(i+1) :=conv_std_logic_vector(temp,8);
			end loop loop1;
					
					out_pixel <=temp_mat(2);
									--outpixel gives average value
					valid <= '1';
		when others => null;
		end case;
		end process;

end Behavioral_average;

