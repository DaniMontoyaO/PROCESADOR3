----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:06 04/25/2016 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UC is
	Port ( OP : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ALU_OP : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;
	
architecture Behavioral of UC is

begin

	process(OP,OP3)
	begin
	
		if(op = "10") then
		
			case OP3 is 
			
 
							when "000000" => -- ADD
								ALU_OP  <= "000000";
								
							when "010000" => -- ADDcc
								ALU_OP  <= "010000";
								
							when "011000" => -- ADDX
								ALU_OP  <= "011000";
							
							when "001000" => -- ADDXcc
								ALU_OP  <= "001000";

							when "000100" => -- SUB
								 ALU_OP <= "000100";
						 
							when "010100" => -- SUBcc
								 ALU_OP <= "010100";	
								 
							when "001100" => -- SUBX
								 ALU_OP <= "001100";	
                     
                     when "011100" => -- SUBXcc
								 ALU_OP <= "011100";							
								 
							when "000001" => -- AND
								ALU_OP <= "000001";
								 
							when "000101" => -- ANDN
								ALU_OP <= "000101";
							
                     when "010101" => -- ANDNcc
								ALU_OP <= "010101";
								 
							when "010001" => -- ANDcc
								ALU_OP <= "010001";							
								 
							when "000010" => -- OR
								ALU_OP <= "000010";
								
							when "000110" => -- ORN
								ALU_OP <= "000110";
								
							when "010010" => -- ORcc
								ALU_OP <= "010010";
								
							when "010110" => -- ORNcc
								ALU_OP <= "010110";	
								 
							when "000011" => -- XOR
								ALU_OP  <= "000011"; 
								
							when "000111" => -- XNOR
								ALU_OP <= "000111";
							
                     when "010011" => -- XORcc
								ALU_OP  <= "010011"; 
								
							when "010111" => -- XNORcc
								ALU_OP <= "010111";	
								
							when "010011" => -- XORcc
								salida_UC  <= "010011"; 
								 
							when "010111" => -- XNORcc
								salida_UC <= "010111";
								
                     
								
							when others => --otras instrucciones
								salida_UC <= "111111"; 
								
				end case;
						 
		end if; 

end process; 

end Behavioral;