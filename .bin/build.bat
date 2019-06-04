@echo off
for %%f in (*.vhdl) do (
  ghdl -a %%f
)
ghdl -e %~n1

if not exist "waves\" mkdir waves

ghdl -r %~n1 --vcd=waves/%~n1.vcd
gtkwave waves/%~n1.vcd