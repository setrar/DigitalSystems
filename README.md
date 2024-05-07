<!-- MASTER-ONLY: DO NOT MODIFY THIS FILE

Copyright © Telecom Paris
Copyright © Renaud Pacalet (renaud.pacalet@telecom-paris.fr)

This file must be used under the terms of the CeCILL. This source
file is licensed as described in the file COPYING, which you should
have received as part of this distribution. The terms are also
available at:
https://cecill.info/licences/Licence_CeCILL_V2.1-en.html
-->

Labs of DigitalSystems course

---

[TOC]

---

## Groups for the final project

| Algorithm   | Rounds  | Name 1         | Name 2         |
| ----------- | ------- | -------------- | -------------- |
| ARIA        | 12      | André          | Thomas         |
| CAMELLIA    | 18      | Ahmed          | Mohamed Radhi  |
| LEA         | 24      | Guillaume      | Pierre         |
| NOEKEON     | 16      | Mariem         | Tanguy         |
| SERPENT     | 32      | Andrey         | Florian        |
| SEED        | 16      | Efrén          | Jim            |
| SMS4        | 32      | Brice          | Maxime         |
| ZODIAC      | 16      | Lili           | Mohamed Aziz   |

## Homeworks

### For 2023-05-17

- Finish reading the [Free Range Factory] VHDL book
- Complete the lab on the [Linux device driver for the DHT11 controller](vhdl/lab10)
   * Generate and compile the device tree
   * Configure and compile the Linux kernel
   * Understand and adapt the provided Linux driver and example software application
   * Compile the Linux driver and the example software application.
     I did not find time to fix the compilation of the Linux driver on EURECOM computers.
     If there are errors when compiling the driver please use the provided binary: `/packages/LabSoC/ds-files/dht11_driver.ko`.
   * Test on the Zybo board
   * Write your report
- Complete the `crypto_pkg` package for your crypto algorithm and validate it against reliable test vectors.
- Read again the specifications of the lite version of the [AXI4 lite protocol] and imagine how a hardware accelerator could act as a master to directly access the memory of a computer system.
- Edit the `/status3.md` file and fill the [third intermediate status check-list]

### For 2024-04-26

- Read chapters 10 to 11 of the [Free Range Factory] VHDL book
- Complete the AXI4 lite wrapper for the `dht11_ctrl` controller:
  * Block diagram
  * State diagrams
  * VHDL coding
  * Simulation, debugging, pass automatic evaluation
  * Synthesis and test on the Zybo
- Read again the [AXI4 lite protocol specification] and imagine how a hardware accelerator could act as a master to directly access the memory of a computer system.

### For 2024-04-19

- Read chapters 8 to 9 of the [Free Range Factory] VHDL book
- Read the following parts of the documentation:
  * [Examining synthesis results]
- Complete the DHT11 controller
  * Block diagram
  * State diagram
  * VHDL coding
  * Simulation, debugging, pass automatic evaluation
  * Synthesis and test on the Zybo
- Design and code the AXI4 lite wrapper for the `dht11_ctrl` controller:
  * Block diagram
  * State diagrams
  * VHDL coding
  * Simulation, debugging, pass automatic evaluation
  * Synthesis and test on the Zybo
- Edit the `/status2.md` file and fill the [second intermediate status check-list]

### For 2024-04-12

- Read chapters 6 to 7 of the [Free Range Factory] VHDL book
- Read the following parts of the documentation:
  * [Unconstrained types]
  * [Recursivity]
  * [Protected types]
  * [Random numbers generation]
- Complete all pending items in [first intermediate status check-list]
- Design and code the DHT11 controller
  * Block diagram
  * State diagram
  * VHDL coding
  * Simulation, debugging, pass automatic evaluation
  * Synthesis and test on the Zybo
- Study the [AXI4 lite protocol specification]

### For 2024-04-05

- Complete all challenges, including synthesis and test on the Zybo
- Read the [DHT11 sensor datasheet]
- Edit the `/status1.md` file and fill the [first intermediate status check-list]

### For 2024-03-29

- Read chapter 5 and section 10.8 of the [Free Range Factory] VHDL book
- If you didn't already, read the following parts of the documentation:
  * [Generic parameters]
  * [Aggregate notations]
  * [Resolution functions, unresolved and resolved types]
  * [Arithmetic: which types to use?]
  * [Entity instantiations]
- Complete the 4 first labs, including synthesis and test on the Zybo
- Read the [DHT11 sensor datasheet]

### For 2024-03-15

- Complete [lab01](vhdl/lab01), coding, simulation, synthesis, test on the Zybo board.
- Continue learning git and Markdown ([ProGit book], [Daring Fireball], [Markdown tutorial]).
- Read chapter 4 of the [Free Range Factory] VHDL book
- Read the following parts of the documentation:
  * [Comments]
  * [Identifiers]
  * [Wait]
  * [Initial values declarations]
  * [D-flip-flops (DFF) and latches]

### For 2024-03-08

- Learn a bit of `git` ([ProGit book]).
  Watch the [videos].
  Try to imagine a work flow with a protected master branch and one branch per student.
- Learn a bit of Markdown ([Daring Fireball], [Markdown tutorial]).
- Read the [Getting started with VHDL] section of the documentation.
  Prepare questions.
- Read the [Digital hardware design using VHDL in a nutshell] section of the documentation.
  Prepare questions.
- Read the [VHDL simulation] section of the documentation.
  Prepare questions.
- Read the first three chapters and section 10.4 of the [Free Range Factory] VHDL book.
- Solve all technical issues; you should be able to:
  * If you use your own laptop, `ssh` to a EURECOM GNU/Linux computer in room 52 (for the syntheses).
  * Clone the GitLab project on your personal computer and/or a EURECOM GNU/Linux computer, work in your personal branch, add, commit and push your modifications ([GitLab and git set-up](#gitlab-and-git-set-up)).
  * Compile and simulate an example design, examine the waveforms; see [VHDL simulation].

## Introduction

**PLEASE READ THIS FIRST, CAREFULLY**

1. The following assumes a student named Mary Shelley, with username `shelley`; replace with your own name/username.

1. **Warning:** plagiarism is not tolerated; please do not copy-paste others' work (not even ChatGPT's work) without proper citation and credit.
   Do not think that plagiarism can be smart enough to remain undetected.
   Your source code and your reports for the final project **must** be your **personal and original** work.

1. Do the work yourself (typing, thinking, testing...).
   It is much more beneficial than letting somebody else do it on your behalf.
   Of course, you can exchange ideas with others during the labs.
   It is even strongly advised.
   Helping others or asking others for help is highly beneficial.

1. There is a [FAQ]; if you don't know what text editor to use, if you encounter problems with the GitLab authentication or the command line, if you prefer working on your personal computer and want to install the tools, please visit the [FAQ].

1. To get the full benefit of the labs you must be reasonably comfortable with GNU/Linux and the command line, and be able to use at least one of the text editors that can be found under GNU/Linux (`emacs`, `vim`, `nano`, `gedit`, `atom`, `sublime text`...).
   The [Ubuntu Linux command line tutorial for beginners] is a nice starting point (about 50 minutes).
   [bootlin] wrote a useful one-page [memento of the most useful GNU/Linux commands]; there is even a [French version](doc/data/command_memento_fr.pdf).
   Having some knowledge of algorithm principles and basic programming skills (in any programming language) will also be useful.

1. The GitLab web interface allows to edit files directly from your web browser.
   Unless you are a `git` expert **never**, **never** do that, this is the best way to create divergent versions of your work and lose parts or all of it.
   Always edit the files in your local copy of the repository (the _clone_) using your favorite text editor and add-commit-push your modifications.

1. Some files shall **not** be modified by you; near the top they contain a comment saying something like `MASTER-ONLY: DO NOT MODIFY THIS FILE`.
   Please do not modify these files.

1. File or directory names with spaces are almost always a bad idea that will bite you at one point.
   When choosing a name for a new file or directory use only alphanumeric characters, underscore (`_`), hyphen (`-`) and dot (`.`).

1. The labs are not graded.
   The lab reports and their source code files are not evaluated.
   Writing a report for each lab and committing-pushing it with the source code files is warmly advised but not mandatory.
   These files are for your own records only.
   The automatic evaluation system is informative only, the results it provides are not considered for the grading.
   The labs are mandatory, but only in the sense that you **must** work on each lab.
   If you do not you will likely miss something important.
   Attending the lab or the project sessions is warmly advised but not mandatory.
   If you cannot attend a lab session do your best to complete the lab anyway **before** the following session.
   If you do not you will fall behind and it will become more and more difficult to catch up.

1. As we all share the same repository, it is important to keep it clean.
   In particular, please do not `git add` directories; it is the best way to add files that we do not want in the repository; `git add` only files, and only files that make sense (source code, reports, carefully selected images used in reports...).
   Try to use the right resolution for the (carefully selected) images you add.
   Try to run simulations and syntheses out of your local copy of the repository; the generated files will be kept out of the source tree and this will reduce the risk of accidental commits of unwanted files.

1. File or directory names with spaces (or tabs...) are a bad idea under GNU/Linux.
   When choosing a name for a new file or directory use only alphanumeric characters, plus underscore (`_`), hyphen (`-`) and dot (`.`).

1. In the lab instructions you are asked to type commands.
   They are usually displayed as a code block:

    ```bash
    cd ~/Documents/ds
    ls
    ```

   Sometimes the commands are preceded by a prompt (`$ `, `> `...) representing the prompt of the current shell.
   It is not a part of the command, do not type it.
   When the expected outputs are shown they appear immediately below the code block, formatted as follows:

    ```escape
    <!FAQ.md  Makefile  README.md  doc  images  local.mk  scripts  solutions  vhdl  zybo  zybo.md!>
    ```

1. If you discover a bug, a broken link, a spelling error, a missing explanation, an explanation that should be improved, etc. please inform an adviser.

1. The final project accounts for 50% of the overall mark.
   You will work in teams.
   The same grade will be given to all members of a team.
   The grading is based on the project report and source codes.
   The report must be written in [Markdown] in the `REPORT.md` file at the root of the project's dedicated directory, in the project's dedicated branch.
   Clearly indicate in the project report the names and email addresses of the members of the team. Example of report header:

   ```escape
   <!# Project report: THE TIME MACHINE

   The report and all source files can be found in the `time_travel` branch.

   ## Team members:

   * H. G. Wells, h.g.wells@time-travel.org
   * Doctor Who, doc.who@bbc.uk
   * Poul Anderson, p.anderson@time.patrol.us!>
   ```

   To explain your source code you can add text to the `REPORT.md` file or add comments directly in the source file, as you wish.

1. The reports and source codes are due in your branch the day **before** the written exam at 23:59 sharp.
   After this deadline the repository will become read-only and there will be no way to add or modify anything.
   Please do not ask for extension, do not ask if you could send your work by email after the deadline, or any similar exception.

1. Carefully check the synthesis results.
   The semantics of the VHDL language for simulation and synthesis are not the same.
   As a consequence, it can perfectly be that your design simulates apparently as expected but that the synthesis result does not behave as expected on the target hardware.
   When synthesizing with Xilinx Vivado it is thus strongly advised to carefully check the synthesis results.
   The [Examining synthesis results] part of the documentation explains what should be checked and how.

## GitLab and `git` set-up

To help with the GitLab and `git` set-up a helper `bash` script is available on EURECOM GNU/Linux computers, in `/packages/LabSoC/bin/labs-init` (and in the [scripts/labs-init](scripts/labs-init) subdirectory of the repository).

> Using the default configuration is warmly recommended but the helper script is configurable so, if you know what you are doing and you do not like the defaults, you can copy it somewhere, edit it and adapt the variable declarations near the top to your own preferences (`ssh` key to use, path to the clone of the repository...).

Log on a EURECOM GNU/Linux desktop computer (in lab rooms 52 or 53), open a terminal, source the helper script (or your modified copy) and if you are asked questions answer them:

```bash
source /packages/LabSoC/bin/labs-init ds
```

If there were errors please ask for help and indicate the error message.
Else, you should now be ready to test the installation and the tools.

## Testing the configuration

The local clone of the repository should normally be in `~/Documents/ds`.
If you do not see the material for the labs in the clone, don't worry, they will be added later.
A number of branches have already been created such that we can all work in isolated environments and avoid conflicts.
The branch named `master` is protected and will be used to provide instructions for the labs, code templates, documentation...
The branch named as your username is your personal branch in which you will work, it should already be the current branch of your local clone:

```bash
cd ~/Documents/ds
git status
```

```escape
<!On branch shelley
Your branch is up to date with 'origin/shelley'!>
```

From time to time, when new material will be added to the `master` branch, you will be asked to merge it in your personal branch:

```bash
git pull
git merge --no-edit origin/master
```

Do not forget to add, commit and push your own work in your personal branch.
Example to add-commit-push your last modifications on `REPORT.md` and `my_code`:

```bash
git add REPORT.md my_code
git commit -m 'Add conclusion to report and fix 2 bugs in my_code'
git push
```

Check that everything is in order by adding an empty file named `got.it` to your personal branch.
First check that you really are on your personal branch:

```bash
cd ~/Documents/ds
git branch
```

```escape
<!master
* shelley!>
```

If the leading star (`*`) is on front of your personal branch (like above), you are on your personal branch; else switch to your personal branch and check again:

```bash
git switch shelley
```

```escape
<!Switched to branch 'shelley'
Your branch is up to date with 'origin/shelley'!>
```

```bash
git branch
```

```escape
<!master
* shelley!>
```

Then, create the empty file and add-commit-push:

```bash
touch got.it
git add got.it
git commit -m 'add got.it empty file'
git push
```

If there are errors ask for help.

Later do the same to add, commit and push your work in your personal branch.

Let's then try to create a simple example VHDL source file and to compile it with GHDL:

```bash
mkdir -p ~/tmp
cd ~/tmp
echo 'entity foo is end;' > foo.vhd
echo 'architecture arc of foo is begin end;' >> foo.vhd
export PATH=$PATH:/packages/LabSoC/ghdl/bin
ghdl -a foo.vhd
ls
```

```escape
<!foo.vhd   work-obj93.cf!>
```

If there were no errors the compiler works.
Next, let's test the simulation:

```bash
ghdl -r foo
```

If there were no errors everything is fine.

[bootlin]: https://bootlin.com/
[memento of the most useful GNU/Linux commands]: doc/data/command_memento.pdf
[French version]: doc/data/command_memento_fr.pdf
[Markdown]: https://www.markdowntutorial.com/
[Ubuntu Linux command line tutorial for beginners]: https://ubuntu.com/tutorials/command-line-for-beginners
[FAQ]: FAQ.md
[Examining synthesis results]: doc/data/examining-synthesis-results.md
[GHDL]: https://ghdl.github.io/ghdl/about.html
[GTKWave]: https://sourceforge.net/projects/gtkwave/
[ModelSim-Intel FPGA Starter Edition Software]: https://fpgasoftware.intel.com/?edition=lite&product=modelsim_ae
[direct link for Linux]: https://download.altera.com/akdlm/software/acdsinst/20.1std.1/720/ib_installers/ModelSimSetup-20.1.1.720-linux.run
[direct link for Windows]: https://download.altera.com/akdlm/software/acdsinst/20.1std.1/720/ib_installers/ModelSimSetup-20.1.1.720-windows.exe
[Siemens]: https://eda.sw.siemens.com/
[Yosys]: https://yosyshq.net/yosys/
[ghdl-yosys-plugin]: https://github.com/ghdl/ghdl-yosys-plugin
[Icarus]: http://iverilog.icarus.com/
[Xilinx]: https://www.xilinx.com/
[Vivado]: https://www.xilinx.com/support/download.html
[bootlin]: https://bootlin.com/
[ProGit book]: doc/data/ProGitScottChacon.pdf
[videos]: https://git-scm.com/videos
[Daring Fireball]: https://daringfireball.net/projects/markdown/syntax
[Markdown tutorial]: http://www.markdowntutorial.com/
[Free Range Factory]: doc/data/free_range_vhdl.pdf
[Getting started with VHDL]: doc/data/getting-started-with-vhdl.md
[Digital hardware design using VHDL in a nutshell]: doc/data/digital-hardware-design-using-vhdl-in-a-nutshell.md
[VHDL simulation]: doc/data/vhdl-simulation.md
[Comments]: doc/data/comments.md
[Identifiers]: doc/data/identifiers.md
[Wait]: doc/data/wait.md
[D-flip-flops (DFF) and latches]: doc/data/d-flip-flops-dff-and-latches.md
[Initial values declarations]: doc/data/initial-values.md
[Generic parameters]: doc/data/generics.md
[Aggregate notations]: doc/data/aggregate-notations.md
[Resolution functions, unresolved and resolved types]: doc/data/resolution-functions-unresolved-and-resolved-types.md
[Arithmetic: which types to use?]: doc/data/arithmetic-which-types-to-use.md
[Entity instantiations]: doc/data/entity-instantiations.md
[Unconstrained types]: doc/data/unconstrained-types.md
[Recursivity]: doc/data/recursivity.md
[Protected types]: doc/data/protected-types.md
[Random numbers generation]: doc/data/random-numbers-generation.md
[DHT11 sensor datasheet]: doc/data/DHT11.pdf
[first intermediate status check-list]: status1.md
[second intermediate status check-list]: status2.md
[third intermediate status check-list]: status3.md
[AXI4 lite protocol specification]: doc/data/axi.pdf

<!-- vim: set tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=0: -->
