----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:14:35 09/30/2016 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
 Port ( ENTRADA_NPC : in  STD_LOGIC_VECTOR (31 downto 0);
        CLK: in  STD_LOGIC;
		  RST: in  STD_LOGIC;
        SALIDA_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

begin
	process (CLK, ENTRADA_NPC,RST)
		begin
		if (rising_edge(CLK)) then
				if ( RST ='1') then
	          SALIDA_PC <= "00000000000000000000000000000000";
			else 
				 SALIDA_PC <= ENTRADA_NPC;
				end if;
			end if;
	end process;
end Behavioral;

