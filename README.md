PubH 7462 Assignment 7
================

## Make an ICU status report from the Sepsis dataset.

This report was generated on Saturday, April 08, 2023 at 20:30.

A table listing the patients who currently have sepsis (if any), along
with their most recent heart rate, temperature, and respiratory rate

<div id="zhnpcrwrsp" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zhnpcrwrsp .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#zhnpcrwrsp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zhnpcrwrsp .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#zhnpcrwrsp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zhnpcrwrsp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zhnpcrwrsp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zhnpcrwrsp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zhnpcrwrsp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#zhnpcrwrsp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#zhnpcrwrsp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#zhnpcrwrsp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#zhnpcrwrsp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#zhnpcrwrsp .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#zhnpcrwrsp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#zhnpcrwrsp .gt_from_md > :first-child {
  margin-top: 0;
}

#zhnpcrwrsp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zhnpcrwrsp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#zhnpcrwrsp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#zhnpcrwrsp .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#zhnpcrwrsp .gt_row_group_first td {
  border-top-width: 2px;
}

#zhnpcrwrsp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zhnpcrwrsp .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#zhnpcrwrsp .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#zhnpcrwrsp .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zhnpcrwrsp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zhnpcrwrsp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#zhnpcrwrsp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#zhnpcrwrsp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zhnpcrwrsp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zhnpcrwrsp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zhnpcrwrsp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zhnpcrwrsp .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#zhnpcrwrsp .gt_left {
  text-align: left;
}

#zhnpcrwrsp .gt_center {
  text-align: center;
}

#zhnpcrwrsp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zhnpcrwrsp .gt_font_normal {
  font-weight: normal;
}

#zhnpcrwrsp .gt_font_bold {
  font-weight: bold;
}

#zhnpcrwrsp .gt_font_italic {
  font-style: italic;
}

#zhnpcrwrsp .gt_super {
  font-size: 65%;
}

#zhnpcrwrsp .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#zhnpcrwrsp .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#zhnpcrwrsp .gt_indent_1 {
  text-indent: 5px;
}

#zhnpcrwrsp .gt_indent_2 {
  text-indent: 10px;
}

#zhnpcrwrsp .gt_indent_3 {
  text-indent: 15px;
}

#zhnpcrwrsp .gt_indent_4 {
  text-indent: 20px;
}

#zhnpcrwrsp .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <thead class="gt_header">
    <tr>
      <td colspan="4" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Most recent vitals of patients who currently have sepsis</td>
    </tr>
    
  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Patient">Patient</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Heart Rate">Heart Rate</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Temperature">Temperature</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Respiratory Rate">Respiratory Rate</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_right gt_stub">003158</th>
<td headers="stub_1_1 HR" class="gt_row gt_right">78</td>
<td headers="stub_1_1 Temp" class="gt_row gt_right">NA</td>
<td headers="stub_1_1 Resp" class="gt_row gt_right">15</td></tr>
  </tbody>
  
  
</table>
</div>

Plots for all patients who have sepsis (if any) that show the complete
history of their heart rate, temperature, and respiratory rate during
their time in the ICU.

![](README_files/figure-commonmark/unnamed-chunk-4-1.png)

A table showing the change in heart rate, temperature, and respiratory
rate between the last two measurements for all patients

<div id="hikalrqwod" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#hikalrqwod .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#hikalrqwod .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hikalrqwod .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#hikalrqwod .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#hikalrqwod .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#hikalrqwod .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hikalrqwod .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hikalrqwod .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#hikalrqwod .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#hikalrqwod .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#hikalrqwod .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#hikalrqwod .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#hikalrqwod .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#hikalrqwod .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#hikalrqwod .gt_from_md > :first-child {
  margin-top: 0;
}

#hikalrqwod .gt_from_md > :last-child {
  margin-bottom: 0;
}

#hikalrqwod .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#hikalrqwod .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#hikalrqwod .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#hikalrqwod .gt_row_group_first td {
  border-top-width: 2px;
}

#hikalrqwod .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hikalrqwod .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#hikalrqwod .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#hikalrqwod .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hikalrqwod .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hikalrqwod .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#hikalrqwod .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#hikalrqwod .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hikalrqwod .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hikalrqwod .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#hikalrqwod .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hikalrqwod .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#hikalrqwod .gt_left {
  text-align: left;
}

#hikalrqwod .gt_center {
  text-align: center;
}

#hikalrqwod .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#hikalrqwod .gt_font_normal {
  font-weight: normal;
}

#hikalrqwod .gt_font_bold {
  font-weight: bold;
}

#hikalrqwod .gt_font_italic {
  font-style: italic;
}

#hikalrqwod .gt_super {
  font-size: 65%;
}

#hikalrqwod .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#hikalrqwod .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#hikalrqwod .gt_indent_1 {
  text-indent: 5px;
}

#hikalrqwod .gt_indent_2 {
  text-indent: 10px;
}

#hikalrqwod .gt_indent_3 {
  text-indent: 15px;
}

#hikalrqwod .gt_indent_4 {
  text-indent: 20px;
}

#hikalrqwod .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <thead class="gt_header">
    <tr>
      <td colspan="4" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Change in vitals between the last two measurements for all patients</td>
    </tr>
    
  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="2" colspan="1" scope="col" id="Patient">Patient</th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="3" scope="colgroup" id="Change in Vitals">
        <span class="gt_column_spanner">Change in Vitals</span>
      </th>
    </tr>
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Heart Rate">Heart Rate</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Temperature">Temperature</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Respiratory Rate">Respiratory Rate</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_right gt_stub">000031</th>
<td headers="stub_1_1 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_1 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_1 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_2" scope="row" class="gt_row gt_right gt_stub">000103</th>
<td headers="stub_1_2 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_2 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_2 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_3" scope="row" class="gt_row gt_right gt_stub">000220</th>
<td headers="stub_1_3 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_3 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_3 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_4" scope="row" class="gt_row gt_right gt_stub">000252</th>
<td headers="stub_1_4 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_4 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_4 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_5" scope="row" class="gt_row gt_right gt_stub">000303</th>
<td headers="stub_1_5 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_5 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_5 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_6" scope="row" class="gt_row gt_right gt_stub">001229</th>
<td headers="stub_1_6 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_6 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_6 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_7" scope="row" class="gt_row gt_right gt_stub">001449</th>
<td headers="stub_1_7 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_7 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_7 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_8" scope="row" class="gt_row gt_right gt_stub">001501</th>
<td headers="stub_1_8 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_8 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_8 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_9" scope="row" class="gt_row gt_right gt_stub">001568</th>
<td headers="stub_1_9 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_9 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_9 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_10" scope="row" class="gt_row gt_right gt_stub">001573</th>
<td headers="stub_1_10 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_10 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_10 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_11" scope="row" class="gt_row gt_right gt_stub">001587</th>
<td headers="stub_1_11 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_11 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_11 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_12" scope="row" class="gt_row gt_right gt_stub">001657</th>
<td headers="stub_1_12 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_12 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_12 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_13" scope="row" class="gt_row gt_right gt_stub">002457</th>
<td headers="stub_1_13 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_13 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_13 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_14" scope="row" class="gt_row gt_right gt_stub">002500</th>
<td headers="stub_1_14 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_14 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_14 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_15" scope="row" class="gt_row gt_right gt_stub">002624</th>
<td headers="stub_1_15 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_15 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_15 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_16" scope="row" class="gt_row gt_right gt_stub">003092</th>
<td headers="stub_1_16 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_16 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_16 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_17" scope="row" class="gt_row gt_right gt_stub">003103</th>
<td headers="stub_1_17 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_17 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_17 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_18" scope="row" class="gt_row gt_right gt_stub">003158</th>
<td headers="stub_1_18 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_18 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_18 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_19" scope="row" class="gt_row gt_right gt_stub">003239</th>
<td headers="stub_1_19 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_19 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_19 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_20" scope="row" class="gt_row gt_right gt_stub">003394</th>
<td headers="stub_1_20 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_20 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_20 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_21" scope="row" class="gt_row gt_right gt_stub">003460</th>
<td headers="stub_1_21 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_21 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_21 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_22" scope="row" class="gt_row gt_right gt_stub">003586</th>
<td headers="stub_1_22 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_22 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_22 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_23" scope="row" class="gt_row gt_right gt_stub">003656</th>
<td headers="stub_1_23 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_23 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_23 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_24" scope="row" class="gt_row gt_right gt_stub">004002</th>
<td headers="stub_1_24 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_24 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_24 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_25" scope="row" class="gt_row gt_right gt_stub">004156</th>
<td headers="stub_1_25 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_25 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_25 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_26" scope="row" class="gt_row gt_right gt_stub">004179</th>
<td headers="stub_1_26 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_26 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_26 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_27" scope="row" class="gt_row gt_right gt_stub">004598</th>
<td headers="stub_1_27 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_27 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_27 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_28" scope="row" class="gt_row gt_right gt_stub">004796</th>
<td headers="stub_1_28 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_28 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_28 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_29" scope="row" class="gt_row gt_right gt_stub">004930</th>
<td headers="stub_1_29 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_29 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_29 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_30" scope="row" class="gt_row gt_right gt_stub">005298</th>
<td headers="stub_1_30 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_30 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_30 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_31" scope="row" class="gt_row gt_right gt_stub">005356</th>
<td headers="stub_1_31 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_31 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_31 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_32" scope="row" class="gt_row gt_right gt_stub">005424</th>
<td headers="stub_1_32 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_32 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_32 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_33" scope="row" class="gt_row gt_right gt_stub">005973</th>
<td headers="stub_1_33 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_33 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_33 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_34" scope="row" class="gt_row gt_right gt_stub">006215</th>
<td headers="stub_1_34 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_34 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_34 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_35" scope="row" class="gt_row gt_right gt_stub">006377</th>
<td headers="stub_1_35 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_35 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_35 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_36" scope="row" class="gt_row gt_right gt_stub">006657</th>
<td headers="stub_1_36 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_36 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_36 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_37" scope="row" class="gt_row gt_right gt_stub">007129</th>
<td headers="stub_1_37 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_37 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_37 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_38" scope="row" class="gt_row gt_right gt_stub">007403</th>
<td headers="stub_1_38 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_38 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_38 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_39" scope="row" class="gt_row gt_right gt_stub">007765</th>
<td headers="stub_1_39 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_39 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_39 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_40" scope="row" class="gt_row gt_right gt_stub">008266</th>
<td headers="stub_1_40 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_40 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_40 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_41" scope="row" class="gt_row gt_right gt_stub">008461</th>
<td headers="stub_1_41 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_41 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_41 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_42" scope="row" class="gt_row gt_right gt_stub">008708</th>
<td headers="stub_1_42 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_42 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_42 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_43" scope="row" class="gt_row gt_right gt_stub">008811</th>
<td headers="stub_1_43 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_43 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_43 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_44" scope="row" class="gt_row gt_right gt_stub">008890</th>
<td headers="stub_1_44 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_44 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_44 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_45" scope="row" class="gt_row gt_right gt_stub">008898</th>
<td headers="stub_1_45 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_45 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_45 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_46" scope="row" class="gt_row gt_right gt_stub">008984</th>
<td headers="stub_1_46 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_46 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_46 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_47" scope="row" class="gt_row gt_right gt_stub">009182</th>
<td headers="stub_1_47 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_47 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_47 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_48" scope="row" class="gt_row gt_right gt_stub">009622</th>
<td headers="stub_1_48 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_48 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_48 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_49" scope="row" class="gt_row gt_right gt_stub">009761</th>
<td headers="stub_1_49 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_49 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_49 Resp_diff" class="gt_row gt_right">NA</td></tr>
    <tr><th id="stub_1_50" scope="row" class="gt_row gt_right gt_stub">009923</th>
<td headers="stub_1_50 HR_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_50 Temp_diff" class="gt_row gt_right">NA</td>
<td headers="stub_1_50 Resp_diff" class="gt_row gt_right">NA</td></tr>
  </tbody>
  
  
</table>
</div>
