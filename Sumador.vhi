
-- VHDL Instantiation Created from source file Sumador.vhd -- 19:13:30 04/25/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sumador
	PORT(
		Incremento : IN std_logic_vector(31 downto 0);
		Direccion : IN std_logic_vector(31 downto 0);          
		NuevaDireccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Sumador: Sumador PORT MAP(
		Incremento => ,
		Direccion => ,
		NuevaDireccion => 
	);


