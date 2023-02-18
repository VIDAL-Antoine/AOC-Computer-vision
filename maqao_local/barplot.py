import matplotlib.pyplot as plt
import numpy as np
A=[[66.78, 71.32, 68.67],
   [5.44, 4.25, 4.84],
   [3.55, 2.37, 2.50]]
Cycle = [409750026.000, 12745729.500, 4952661.000]
Info = ["v0", "v1", "v2"]

# Calculate the mean and confidence interval for each list in A
means = [np.mean(l) for l in A]
stds = [np.std(l) for l in A]
confidences_intervals = [1.96 * (std / np.sqrt(len(l))) for std, l in zip(stds, A)]
medians = [np.median(l) for l in A]

# Plot the histogram with the mean and confidence interval
fig, ax = plt.subplots()
bar = ax.bar(Info, means, yerr=confidences_intervals,capsize=4)
ax.set_xlabel("Option de compilation")
ax.set_ylabel("Temps (ms)")

# Add the median values for each bar
for i, rect in enumerate(bar):
    ax.text(rect.get_x() + rect.get_width() / 2, rect.get_y() + rect.get_height() / 2,
            '{:.2f}'.format(medians[i]), ha='center', va='bottom', fontsize=10)

# Add the second line plot
ax2 = ax.twinx()
ax2.plot(Info, Cycle, 'r', label='Cycles')
ax2.set_ylabel("Cycles", color='r')
ax2.tick_params(axis='y', labelcolor='r')

fig.legend()
plt.show()
