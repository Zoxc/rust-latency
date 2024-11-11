# Understanding Crusader Results

The Crusader GUI provides a compact summary of the test data.
Here are some hints for evaluating the results.

## Result window

![Result with statistics](../media/Crusader-Result-with-stats.png)

Crusader tests the connection using three bursts of traffic.
The Throughput, Latency, and Packet loss are shown in the charts.
In the image above notice:

* **Hovering over a chart** shows crosshairs that give the throughput
  or latency of that point in the chart.
  In the screen shot above, the Down latency
  peaks around 250 ms.
* **Hovering over, or clicking the ⓘ symbol** opens a window that displays
  a summary of the measurements.
  See the description below for details.
* **Clicking a legend** ("color") in the charts shows/hides
  the associated graph.
  In the screen shot above, the Latency's "Round-trip" legend has been clicked,
  hiding the (black) round-trip trace,
  and showing only the Up and Down latency plots.
* The **Save to results** button saves two files: a plot (as `.png`)
  and the data (as `.crr`) to the _crusader-results_ directory
  in the user _home directory_.
* The **Open from results** button opens a `.crr` file
  from the _crusader-results_ directory.
* The **Save** button opens a file dialog to save the current `.crr` file.
* The **Open** button opens a file dialog to select a `.crr` file to open.
* The **Export plot** button opens a file dialog to save a `.png` file.

## Numerical Summary Windows

The Crusader GUI displays charts showing Throughput, Latency,
and Packet loss.
The ⓘ symbol opens a window showing a numerical summary of the charted data.

### Throughput

<img src="../media/Crusader-Throughput.png" alt="description" width="250" />

* Download - Steady state throughput, ignoring any startup transients,
  during the Download portion of the test
* Upload - Steady state throughput, ignoring any startup transients,
  during the Upload portion of the test
* Bidirectional - Sum of the Download and Upload throughputs
  during the Bidirectional portion of the test.
  Also displays the individual Download and Upload throughputs.
* Streams - number of TCP connections used in each direction
* Stream Stagger - The delay between the start of each stream
* Throughput sample interval - Interval between throughput measurements

### Latency

<img src="../media/Crusader-Latency.png" alt="description" width="250" />

Crusader smooths all the latency samples over a 400 ms window.
The values shown in the window display the maximum of those smoothed values.
This emphasizes the peaks of latency.

* Download - Summarizes the round-trip latency during the
  Download portion of the test.
  Also displays the measured one-way delay for Download (from server to client)
  and Upload (client to server)
* Upload - Summarizes the latency for the Upload portion of the test
* Bidirectional - Summarizes the latency for the Bidirectional portion of the test
* Idle latency - Measured latency when no traffic is present.
* Latency sample interval - Interval between latency measurements

### Packet loss

<img src="../media/Crusader-Loss.png" alt="description" width="125" />

* Download - Summarizes packet loss during the Download portion of the test
* Upload - Summarizes packet loss during the Upload portion of the test
* Bidirectional - Summarizes packet loss during the Bidirectional
  portion of the test
