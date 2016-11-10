----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:09:09 10/16/2016 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
    Port ( ENTRADA_CRS2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ENTRADA_SEU : in  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC;
           SALIDA_MUX : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin

process(i,ENTRADA_SEU,ENTRADA_CRS2)
begin
	if(i='1')then
		SALIDA_MUX <=  ENTRADA_SEU;
	else 
		if(i='0')then
			SALIDA_MUX <= ENTRADA_CRS2;
		end if ; 
	end if; 	
end process; 


end Behavioral;

