----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:51 04/23/2016 
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
    Port ( SalidaNpc : in  STD_LOGIC_VECTOR (31 downto 0);
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           SalidaPc : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

begin
process(Clock, SalidaNpc, Reset)
	begin
		if(Reset = '1')then 
			SalidaPc <= x"00000000";
		else
			if(rising_edge(clock))then
				SalidaPc <= SalidaNpc;
			end if;
		end if;
	end process;

end Behavioral;

