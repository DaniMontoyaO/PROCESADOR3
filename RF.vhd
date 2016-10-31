----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:27 04/25/2016 
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
	 Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rsd : in  STD_LOGIC_VECTOR (4 downto 0);
           datawrite : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  rst: in STD_LOGIC);
end RF;

architecture Behavioral of RF is
	type ram is array (0 to 39) of std_logic_vector (31 downto 0);                 
    signal registro : ram := (others =>"00000000000000000000000000000000"); 
begin
	process(Rs1,Rs2,Rsd,datawrite,rst)
			begin	
					if(rst = '1')then
						Crs1 <= (others => '0');
						Crs2 <= (others => '0');
						registro <=(others =>"00000000000000000000000000000000");
					else
						Crs1 <= registro(conv_integer(Rs1));
						Crs2 <= registro(conv_integer(Rs2));
						if (rsd /= "00000")then
								registro(conv_integer(Rsd))<= datawrite;
						end if;
					end if;
		end process;
end Behavioral;

