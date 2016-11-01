----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:46 10/17/2016 
-- Design Name: 
-- Module Name:    Procesador_AMD_FULL - Behavioral 
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

entity Procesador_AMD_FULL is
	Port ( Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           OutProcesador : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador_AMD_FULL;

architecture Behavioral of Procesador_AMD_FULL is
COMPONENT Sumador
	PORT(
		Entrada1 : IN std_logic_vector(31 downto 0);
		Entrada2 : IN std_logic_vector(31 downto 0);          
		Salidasumador : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT NPC
	PORT(
		Salidasumador : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clock : IN std_logic;          
		SalidaNpc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT PC
	PORT(
		SalidaNpc : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clock : IN std_logic;          
		SalidaPc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT instructionMemory
	PORT(
		address : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
	COMPONENT UC
	PORT(    
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);          
		ALU_OP : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT RF
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rsd : IN std_logic_vector(4 downto 0);
		datawrite : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		CRs1 : OUT std_logic_vector(31 downto 0);
		CRs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT MUX
	PORT(
		RfToMux : IN std_logic_vector(31 downto 0);
		inm : IN std_logic;
		seuToMux : IN std_logic_vector(31 downto 0);          
		MuxToAlu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT SEU
	PORT(
		simm13 : IN std_logic_vector(12 downto 0);          
		seu32 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		ALU_Op : IN std_logic_vector(5 downto 0);          
		ALU_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PSR
	PORT(
		nzvc : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		carry : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT PSR_Modifier
	PORT(
		ALUOP : IN std_logic_vector(5 downto 0);
		ALU_Result : IN std_logic_vector(31 downto 0);
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		nzvc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
signal SumadorToNPC, NPCToPC, PCToIM, IMToURS, ALUToRF, RFToALU, RFToMUX, SEUToMUX, MUXToALU: STD_LOGIC_VECTOR (31 downto 0);
signal UCToALU: STD_LOGIC_VECTOR (5 downto 0);
begin

	Inst_Sumador: Sumador PORT MAP(
		Entrada1 => x"00000001",
		Entrada2 => NPCToPC,
		Salidasumador => SumadorToNPC
	);
	
	Inst_NPC: NPC PORT MAP(
		Salidasumador => SumadorToNPC,
		SalidaNpc => NPCToPC,
		Reset => Reset,
		Clock => Clock
	);
	
	Inst_PC: PC PORT MAP(
		SalidaNpc => NPCToPC,
		SalidaPc => PCToIM,
		Reset => Reset,
		Clock => Clock
	);
	
	Inst_instructionMemory: instructionMemory PORT MAP(
		address => PCToIM,
		reset => Reset,
		outInstruction => IMToURS
	);	
	
	Inst_UC: UC PORT MAP(
		OP => IMToURS(31 downto 30),
		OP3 => IMToURS(24 downto 19),
		ALU_OP => UCtoALU
	);	
	
	Inst_RF: RF PORT MAP(
		Rs1 => IMToURS(18 downto 14),
		Rs2 => IMToURS(4 downto 0),
		Rsd => IMToURS(29 downto 25),
		datawrite => ALUToRF,
		CRs1 => RFToALU,
		CRs2 => RFToMUX,
		rst => Reset
	);
	
	Inst_MUX: MUX PORT MAP(
		RfToMux => RFToMUX,
		inm => IMToURS(13),
		seuToMux => SEUToMUX,
		MuxToAlu => MUXToALU
	);
	
	Inst_SEU: SEU PORT MAP(
		simm13 => IMToURS(12 downto 0),
		seu32 => SEUToMUX
	);
	
	Inst_ALU: ALU PORT MAP(
		Crs1 => RFToALU,
		Crs2 => MUXToALU,
		ALU_Op => UCtoALU,
		ALU_Out => ALUToRF
	);
	
	OutProcesador <= ALUToRF;
	

end Behavioral;

