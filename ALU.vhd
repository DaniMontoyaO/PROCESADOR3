----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:33 09/30/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	Port ( ENTRADA_CRS1 : in  STD_LOGIC_VECTOR (31 downto 0);
          ENTRADA_CRS2 : in  STD_LOGIC_VECTOR (31 downto 0);
          OPERADOR_UC : in  STD_LOGIC_VECTOR (5 downto 0);
			 CARRY : in STD_LOGIC;
          SALIDA_ALU : out  STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000"
			 );
end ALU;

architecture Behavioral of ALU is

begin
	 process (ENTRADA_CRS1, ENTRADA_CRS2, CARRY, OPERADOR_UC)
 begin
		case (OPERADOR_UC) is 
			when "000000" => -- add
										SALIDA_ALU <= ENTRADA_CRS1 + ENTRADA_CRS2;
								
								when "010000" => -- addcc
										SALIDA_ALU <= ENTRADA_CRS1 + ENTRADA_CRS2;
								
							when "001000" => -- addX
										SALIDA_ALU <= ENTRADA_CRS1 + ENTRADA_CRS2 + CARRY;
								
							when "011000" => -- addXcc
										SALIDA_ALU <= ENTRADA_CRS1 + ENTRADA_CRS2 + CARRY;
								
								when "000100" => -- sub
										SALIDA_ALU <= ENTRADA_CRS1 - ENTRADA_CRS2;
								
								when "010100" => -- subcc
										SALIDA_ALU <= ENTRADA_CRS1 - ENTRADA_CRS2;
								
								when "001100" => -- subX
										SALIDA_ALU <= ENTRADA_CRS1 - ENTRADA_CRS2 - CARRY;
								
							when "011100" => -- subXcc
										SALIDA_ALU <= ENTRADA_CRS1 - ENTRADA_CRS2 - CARRY;
								
								when "000001" => -- and
										SALIDA_ALU <= ENTRADA_CRS1 and ENTRADA_CRS2;
								
								when "000101" => -- andn
										SALIDA_ALU <= ENTRADA_CRS1 and not (ENTRADA_CRS2);
								
								when "010101" => --andNcc
										SALIDA_ALU <= ENTRADA_CRS1 and ENTRADA_CRS2;
								
								when "010001" => --andcc
										SALIDA_ALU <= ENTRADA_CRS1 and ENTRADA_CRS2;
								
								when "000010" => --or
										SALIDA_ALU <= ENTRADA_CRS1 or ENTRADA_CRS2;
								
								when "000110" => --orn
									SALIDA_ALU <= ENTRADA_CRS1 or not (ENTRADA_CRS2);	
									
								when "010010" => --orcc
										SALIDA_ALU <= ENTRADA_CRS1 or ENTRADA_CRS2;	
								
								when "010110" => --orNcc
										SALIDA_ALU <= ENTRADA_CRS1 or ENTRADA_CRS2;  
								
								when "000011" => -- xor
										SALIDA_ALU <= ENTRADA_CRS1 xor ENTRADA_CRS2;
								
								when "000111" => -- xnor
										SALIDA_ALU <= ENTRADA_CRS1 xnor ENTRADA_CRS2;
								
								when "010011" => -- xorcc
										SALIDA_ALU <= ENTRADA_CRS1 xor ENTRADA_CRS2;				
									
								when others => --otras instrucciones
											SALIDA_ALU <= "00000000000000000000000000000000";


										
						end case;
end process;
								


end Behavioral;

