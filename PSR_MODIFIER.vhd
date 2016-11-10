----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:58 10/30/2016 
-- Design Name: 
-- Module Name:    PSR_MODIFIER - Behavioral 
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use std.textio.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR_MODIFIER is
    Port ( RST : in  STD_LOGIC;
           SALIDA_MUX_CRS2 : in  STD_LOGIC_VECTOR (31 downto 0);
           CRS1 : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA_UC : in  STD_LOGIC_VECTOR (5 downto 0);
           SALIDA_ALU : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA_NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_MODIFIER;

architecture Behavioral of PSR_MODIFIER is

begin

    process(RST,SALIDA_MUX_CRS2,CRS1,SALIDA_UC,SALIDA_ALU)
       begin 
	 if RST = '1' then 
				SALIDA_NZVC <= "0000";
				
				else
	 if (SALIDA_UC= "001111" or SALIDA_UC="010000" or SALIDA_UC="010001" or SALIDA_UC="010010" or  SALIDA_UC="010011" or  SALIDA_UC="010100") then
	      SALIDA_NZVC(3)<=SALIDA_ALU(31);
			  if (conv_integer(SALIDA_ALU)=0) then
			       SALIDA_NZVC(2)<= '1';
					 else 
					 SALIDA_NZVC(2)<='0';
			 end if;
			SALIDA_NZVC(1)<='0';
         SALIDA_NZVC(0)<='0';
			end if;

         if (SALIDA_UC="001001" or SALIDA_UC="001011") then
			SALIDA_NZVC(3)<=SALIDA_ALU(31);
			  if (conv_integer(SALIDA_ALU)=0) then
			       SALIDA_NZVC(2)<= '1';
					 else 
					 SALIDA_NZVC(2)<='0';
			  end if;			  
			SALIDA_NZVC(1) <= (CRS1(31) and SALIDA_MUX_CRS2(31) and (not SALIDA_ALU(31))) or ((CRS1(31)) and (not SALIDA_MUX_CRS2(31)) and SALIDA_ALU(31)); 
         SALIDA_NZVC(0) <= (CRS1(31) and SALIDA_MUX_CRS2(31)) or ((not SALIDA_ALU(31)) and (CRS1(31) or SALIDA_MUX_CRS2(31)));
			end if;
		
			  if (SALIDA_UC="001100"  or SALIDA_UC="001110") then 
			      if (SALIDA_UC="001001" or SALIDA_UC="001011") then
			SALIDA_NZVC(3)<=SALIDA_ALU(31);
			  if (conv_integer(SALIDA_ALU)=0) then
			       SALIDA_NZVC(2)<= '1';
					 else 
					 SALIDA_NZVC(2)<='0';
			  end if;
           SALIDA_NZVC(1) <= (CRS1(31) and (not SALIDA_MUX_CRS2(31)) and (not SALIDA_ALU(31))) or ((not CRS1(31)) and SALIDA_MUX_CRS2(31) and SALIDA_ALU(31));			  
			  SALIDA_NZVC(0) <= ((not CRS1(31)) and SALIDA_MUX_CRS2(31)) or (SALIDA_ALU(31) and ((not CRS1(31)) or SALIDA_MUX_CRS2(31)));
			 
				  end if;
			end if;  		  
		end if;  	
   end process;  
						
end Behavioral;

