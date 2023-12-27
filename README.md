# Instance Segmentation Metrics
[![Build and publish](https://github.com/prime-slam/instanseg-metrics/actions/workflows/ci.yml/badge.svg)](https://github.com/prime-slam/instanseg-metrics/actions/workflows/ci.yml)

<p style="font-size: 14pt;">
     Instanseg is an open-source python library that provides various metrics for evaluating the results of the algorithms for segmenting and associating instances. 
</p>

<p style="font-size: 14pt;">
     List of metrics implemented in the library:
</p>

<ul style="font-size: 14pt;">
    <li>Summary segmentation metrics <ul style="font-size: 14pt;">
        <li>Panoptic</li>
        <li>Full statistics</li>
    </ul></li>
    <li>Instance-based segmentation metrics
        <ul style="font-size: 14pt;">
            <li>Precision</li>
            <li>Recall</li>
            <li>F-Score</li>
            <li>Under segmented ratio</li>
            <li>Over segmented ratio</li>
            <li>Noise ratio</li>
            <li>Missed ratio</li>
    </ul></li>
    <li>Point-based segmentation metrics
        <ul style="font-size: 14pt;">
            <li>Intersection over Union (IoU)</li>
            <li>Dice</li>
            <li>Mean of some metric for matched instances</li>
    </ul></li>
</ul>

<p style="font-size: 14pt;">
    For more, please visit the <a href="https://prime-slam.github.io/instanseg-metrics/">Instanseg documentation</a>.
</p>

# Python quick start

<p style="font-size: 14pt;">
     Library can be installed using the pip package manager:
</p>

```bash
$ # Install package
$ pip install instanseg

$ # Check installed version of package
$ pip show instanseg
```

# Example of usage

<p style="font-size: 14pt;">
    Below is an example of using the precision metric:
</p>

```bash
>>> from instanseg.metrics import precision
>>> pred_labels = np.array([1, 1, 3, 3])
>>> gt_labels = np.array([2, 2, 0, 3])
>>> tp_condition = "iou"
>>> precision(pred_labels, gt_labels, tp_condition)
0.5
```

# Citation
Package is based on metrics package evops provided in the paper:
```
@misc{kornilova2022evops,
      title={EVOPS Benchmark: Evaluation of Plane Segmentation from RGBD and LiDAR Data}, 
      author={Anastasiia Kornilova, Dmitrii Iarosh, Denis Kukushkin, Nikolai Goncharov, Pavel Mokeev, Arthur Saliou, Gonzalo Ferrer},
      year={2022},
      eprint={2204.05799},
      archivePrefix={arXiv},
      primaryClass={cs.CV}
}
```

# License

<p style="font-size: 14pt;">
    This project is licensed under the Apache License - see the <a href="https://github.com/prime-slam/instanseg-metrics/blob/main/LICENSE">LICENSE</a> file for details.
</p>