
-- VHDL Instantiation Created from source file PC.vhd -- 18:13:12 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC
	PORT(
		ENTRADA_NPC : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		RST : IN std_logic;          
		SALIDA_PC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PC: PC PORT MAP(
		ENTRADA_NPC => ,
		CLK => ,
		RST => ,
		SALIDA_PC => 
	);


