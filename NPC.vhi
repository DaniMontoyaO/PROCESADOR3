
-- VHDL Instantiation Created from source file NPC.vhd -- 18:12:55 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT NPC
	PORT(
		ENTRADA_ADD : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		RST : IN std_logic;          
		SALIDA_NPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_NPC: NPC PORT MAP(
		ENTRADA_ADD => ,
		CLK => ,
		RST => ,
		SALIDA_NPC => 
	);


