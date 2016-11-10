----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:30 10/16/2016 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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

entity RF is

Port (	RS1: in  STD_LOGIC_VECTOR (4 downto 0);
         RS2 : in  STD_LOGIC_VECTOR (4 downto 0);
			DW: in STD_LOGIC_VECTOR (31 downto 0);
			RST : in  STD_LOGIC;
         RD : in  STD_LOGIC_VECTOR (4 downto 0);
			CRS1: out  STD_LOGIC_VECTOR (31 downto 0);
			CRS2: out  STD_LOGIC_VECTOR (31 downto 0));
end RF;

architecture arq_registerfile of RF is

	type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal registros : ram_type :=(others => "00000000000000000000000000000000");

begin
process(RS1,RS2, DW, RST, RD)
begin
	if(RST = '1')then
				CRS1 <= "00000000000000000000000000000000";
				CRS2 <= "00000000000000000000000000000000";
			
				registros <= (others => "00000000000000000000000000000000");
			else
				CRS1 <= registros(conv_integer(RS1));
				CRS2 <= registros(conv_integer(RS2));
				
				if(RD /= "000000")then
					registros(conv_integer(RD)) <= DW;
				end if;
			end if;
	
end process; 

end arq_registerfile;

