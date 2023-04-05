----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2023 09:39:56 AM
-- Design Name: 
-- Module Name: alphabet_to_morse - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alphabet_to_morse is
--  Port ( );
    Port (
    blank : in    std_logic;    
    bin   : in    std_logic_vector(4 downto 0); --! Binary representation of one alphabetical symbol
    alp   : out   std_logic_vector(31 downto 0)
    );
    
   
end alphabet_to_morse;

architecture Behavioral of alphabet_to_morse is

begin

p_bin_alp_decoder : process (blank, bin) is
    begin
        case bin is
            when "00000" =>
                alp <= ".-";    --A 
            when "00001" =>
                alp <= "-...";  --B 
            when "00010" =>
                alp <= "-.-.";  --C 
            when "00011" =>
                alp <= "-..";   --D    
            when "00100" =>
                alp <= ".";     --E 
            when "00101" =>
                alp <= "..-.";  --F
            when "00110" =>
                alp <= "--.";   --G  
            when "00111" =>
                alp <= "....";  --H   
            when "01000" =>
                alp <= "----"; --CH     
            when "01001" =>
                alp <= "..";   --I   
            when "01010" =>
                alp <= ".---"; --J     
            when "01011" =>
                alp <= "-.-";  --K
            when "01100" =>
                alp <= ".-.."; --L        
            when "01101" =>
                alp <= "--";   --M     
            when "01110" =>
                alp <= "-.";  --N        
            when "01111" =>
                alp <= "---"; --O 
            when "10000" =>
                alp <= ".--."; --P 
            when "10001" =>
                alp <= "--.-";  --Q
            when "10010" =>
                alp <= ".-.";  --R 
            when "10011" =>
                alp <= "...";   --S    
            when "10100" =>
                alp <= "-";     --T 
            when "10101" =>
                alp <= "..-";  --U
            when "10110" =>
                alp <= "...-";   --V  
            when "10111" =>
                alp <= ".--";  --W   
            when "11000" =>
                alp <= "-..-"; --X     
            when "11001" =>
                alp <= "-.--";   --Y   
            when "11010" =>
                alp <= "--.."; --Y     
            when "11011" =>
                alp <= ".-.-.-";  --Te?ka
            when "11100" =>
                alp <= "..--.."; --Otazník    
            when "11101" =>
                alp <= "--...-";   --Vyk?i?ník   
            when "11110" =>
                alp <= "--..--";  --?árka        
            when "11111" =>
                alp <= "---..."; --Dvojte?ka 
        end case
                
                    
end Behavioral;
