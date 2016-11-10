
-- VHDL Instantiation Created from source file ALU.vhd -- 18:55:55 11/01/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		ENTRADA_CRS1 : IN std_logic_vector(31 downto 0);
		ENTRADA_CRS2 : IN std_logic_vector(31 downto 0);
		OPERADOR_UC : IN std_logic_vector(5 downto 0);
		CARRY : IN std_logic;          
		SALIDA_ALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		ENTRADA_CRS1 => ,
		ENTRADA_CRS2 => ,
		OPERADOR_UC => ,
		CARRY => ,
		SALIDA_ALU => 
	);


