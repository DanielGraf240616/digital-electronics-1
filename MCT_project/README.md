# Morse Code Transmitter
### Team members & responsibilities 
Daniel Graf - mct, top

Lukáš Lipenský - QA, tb

### Theoretical description and explanation

### Hardware description of demo application

### Software description
[Source files](https://github.com/DanielGraf240616/digital-electronics-1/tree/main/MCT_project/DE1_project_MCT/DE1_project_MCT.srcs/sources_1/new)
[Testbench files](https://github.com/DanielGraf240616/digital-electronics-1/tree/main/MCT_project/DE1_project_MCT/DE1_project_MCT.srcs/sim_1/new)
### Component(s) simulations
Simulation of the MCT module, letter A represented by **.-**
![](mct_a.png)
Simulation of the MCT module, letter K represented by **-.-**
![](mct_k.png)

Simulation of the TOP module, letter A representd by **.-**
![](top_a.png)
Simulation of the TOP module, dot representd by **.-.-.-**
![](top_tecka.png)
### Instructions
The MCT is operated by 5 switches on far right and the middle BTNC button.

User inputs desired letter in 5 bit binary form by toggling switches (up- 1, down- 0) and then confirms by pressing the BTNC button which submits the input, after that the RGB led should start blinking depending on the input. BTNC button also works as a reset button, if user holds the button, the led gets turned off.


### References
