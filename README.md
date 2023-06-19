# pr-design-flow

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

