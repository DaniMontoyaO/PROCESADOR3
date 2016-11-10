
-- VHDL Instantiation Created from source file MUX.vhd -- 18:06:13 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		ENTRADA_CRS2 : IN std_logic_vector(31 downto 0);
		ENTRADA_SEU : IN std_logic_vector(31 downto 0);
		i : IN std_logic;          
		SALIDA_MUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		ENTRADA_CRS2 => ,
		ENTRADA_SEU => ,
		i => ,
		SALIDA_MUX => 
	);


