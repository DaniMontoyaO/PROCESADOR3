----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:37:11 09/30/2016 
-- Design Name: 
-- Module Name:    ADD - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD is
    Port ( DIRECCION_A_PC : in  STD_LOGIC_VECTOR (31 downto 0);
			  ENTRADA_SUMADOR : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA_A_NPC : out  STD_LOGIC_VECTOR(31 downto 0));
end ADD;

architecture Behavioral of ADD is

begin
		
		SALIDA_A_NPC <= DIRECCION_A_PC + ENTRADA_SUMADOR;

end Behavioral;

