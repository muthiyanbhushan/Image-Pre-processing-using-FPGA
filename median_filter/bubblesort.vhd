library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.MATH_REAL.ALL;
use ieee.numeric_std.all;	
	entity sort_1 is
		  port( rst_n     : in std_logic:='0';
			  Mat0      : in std_logic_vector(7 downto 0);
			  Mat1      : in std_logic_vector(7 downto 0);
			  Mat2      : in std_logic_vector(7 downto 0);
			  Mat3      : in std_logic_vector(7 downto 0);
			  Mat4      : in std_logic_vector(7 downto 0);
			  Mat5      : in std_logic_vector(7 downto 0);
			  Mat6      : in std_logic_vector(7 downto 0);
			  Mat7      : in std_logic_vector(7 downto 0);
			  Mat8      : in std_logic_vector(7 downto 0);
			  out_pixel : out std_logic_vector(7 downto 0):=(others=>'0');
			  temp1 : out std_logic_vector(7 downto 0));
		  end sort_1;
		
		architecture  behavioural of sort_1 is 
			type matrix is array (0 to 8)    of  std_logic_vector (7 downto 0);
			signal mat_temp    : matrix := (others    => "00000000");
		
		begin

		  mat_temp(0) <= Mat0;
		  mat_temp(1) <= Mat1;
		  mat_temp(2) <= Mat2;
		  mat_temp(3) <= Mat3;
		  mat_temp(4) <= Mat4;
		  mat_temp(5) <= Mat5;
		  mat_temp(6) <= Mat6;
		  mat_temp(7) <= Mat7;
		  mat_temp(8) <= Mat8;

		process(rst_n, mat_temp)
		 variable temp_mat    : matrix := (others    => "00000000");
		 variable temp      : std_logic_vector(7 downto 0):=(others =>'0');
		begin

		case rst_n is
		 when '0' =>
			temp_mat  := (others =>"00000000");
			temp      := (others =>'0');
			out_pixel <= "01000010";
			out_pixel <= (others =>'1');
		when '1' =>
			temp_mat :=  mat_temp;
			loop1:for i in 0 to 8 loop
			loop2:   for j in 0 to 7 loop
						  if(temp_mat(j+1) > temp_mat(j)) then             
							 temp        := temp_mat(j);
							 temp_mat(j) := temp_mat(j+1);
							 temp_mat(j+1) := temp;               
						  else
							NULL;
						end if;	
						end loop loop2;
					end loop loop1;
					
					out_pixel <=  temp_mat(4);
									          --outpixel gives median value
		when others => null;
		end case;
		temp1 <=temp;
		end process;
		end  behavioural;
