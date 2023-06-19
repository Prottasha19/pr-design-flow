# Place Route Design Flow

The physical design is developed for a small single-core RISC-V SoC called PULPino.

These following steps are used:

	a. Floor-planning
	b. Placement
	c. Clock Tree Synthesis
	d. Routing
	E. Verification
	
The design should have an aspect ratio of 1, a core utilization of 70% and a core to io boundary distance of 20 μ m in all the directions. Aspect Ratio defines the chip's core dimensions as the ratio of the height divided by the width. Core Utilization determines the core and module sizes by total standard cells and macros density.

The uart pins are used and placed them on the top side of the floorplan on metal 3. A 10μ spacing is considered between pins.


<h3> Clock tree synthesis </h3>

Clock Tree Synthesis (CTS) can automatically generate a clock tree specification from multi-mode timing constraints and then synthesize and balance clock trees to that specification. CCOpt (Concurrent clock optimization) tool extends CTS by simultaneously optimizing clock and datapath to achieve better performance, area, and power.

Typically, the default routing guideline for routing is provided by LEF files. However, we would like to provide more width and spacing for routing special nets like clock nets. For that, we use Non-Default-Rules (NDR). In this case, clock nets have better signal integrity and lesser crosstalk and noise. Therefore, applying double width and spacing on all clock nets is recommended. Generally, it is not easy to respect the NDR in metal 1. Therefore, it can define NDR from metal 2. However, we should aware of the negative impacts of NDR width and spacing increment on the area of the chip.

Hard macro placement

<img src="https://media.discordapp.net/attachments/999333909873557594/1120296512132489269/Bildschirmfoto_vom_2023-06-08_14-18-06.png?width=756&height=473" />

The layout after the macro placement, power rings and pin edditing

<img src="https://media.discordapp.net/attachments/999333909873557594/1120296513113952337/Bildschirmfoto_vom_2023-06-08_11-32-39.png?width=756&height=473" />

Route design

<img src="https://media.discordapp.net/attachments/999333909873557594/1120296511826296993/Bildschirmfoto_vom_2023-06-15_11-40-22.png?width=756&height=473" />















































