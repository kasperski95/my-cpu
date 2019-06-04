@echo off
for %%f in (*.vhdl) do (
  ghdl -a %%f
)

for %%f in (*tb.vhdl) do (
  ghdl -e %%~nf
  ghdl -r %%~nf
)
