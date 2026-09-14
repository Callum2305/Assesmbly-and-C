All images viewable here;


Run make file as normal.
Intsall gdb with : sudo apt install gdb

in terminal, run: gdb ./Starterkitx32 -tui

-tui is the text user interface. Runs the Gui.

/StarterKitx32 is the binary or compiled program to debug with gdb.

This opens graphic interface in GBD as follows:

![TUI](gbdStarterKitx32tui.png)

Next, add a breakpoint with break_start as follows:

(gdb) break _start

Image below:

![breakstart](breakStart.png)


Next, Run binary with: run

![run](run.png)

Next, step through with nexti AND next commands:

![nextcommands](next.png)

Next moves line by line through C source code, while nexti is through assembly code through one cpu instruction at a time.



Run the StarterKitx32 with the run command as follows:

![RunStarterkit](runStarterKit.png)

As i already ran it, it will ask me to rerun again, select yes. 

Layout Registers:

Type command: layout reg

![Layout Registers](layoutReg.png)

Then move with next to see registers change:

![regChangewithNext](registerChange.png)

Examine registers with following commands:

info registers eax

i r eax

As seen below:

![Info Registers](infoRegisters.png)

info all-registers

![All Registers](infoAllRegisters.png)

Finally, to quit type: quit
If prompted to kill processes, type y