- Made by Mees Radema - 

This is the basis for a script for the selection of rainfall events. There is one sample event in the input folder. 

There are some possibilities:
- Create an overview of all rainfall events in a year.
- Save all rainfall events without extra processing steps (in case you really want everything without a filter). You can turn this off with T/F.
- Determine yourself (with "idle_threshold") how many hours it is allowed to be dry before an event is 'done'. 
- Determine yourself (with "event_threshold") which rainfall intensity counts as 'rain'.
- Track progress in the for-loop (again T/F)

Outside the loop: 
- Filter on minimum and maximum intensity.
- Save overview with filtered rainfall events as csv.
- Save the filtered events themselves as csv.

