----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:49 04/25/2016 
-- Design Name: 
-- Module Name:    SEU - Behavioral 
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

entity SEU is
	Port ( --clk : in  STD_LOGIC;
           --rst : in  STD_LOGIC;
           simm13 : in  STD_LOGIC_VECTOR (12 downto 0);
           seu32 : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU;

architecture Behavioral of SEU is

begin
		process(simm13)
		begin
					if(simm13(12) = '1')then--verifica si el numero es negativo
						seu32(12 downto 0) <= simm13;
						seu32(31 downto 13) <= (others=>'1');--completa con unos por ser negativo
					else
						seu32(12 downto 0) <= simm13;
						seu32(31 downto 13) <= (others=>'0');--si es positivo completa con ceros
					end if;
			
	end process;


end Behavioral;

