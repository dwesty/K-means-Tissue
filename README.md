# K-means-Tissue
Tissue type classification with k-means in matlab (simplified)

Very simple matlab prototype of k-means classification of tissue, designed as part of H&E stained biopsy classification algorithms. Later, more advanced versions were written in C, Python, and Java and leveraged tissue classes for stromal, epithelial, and nuclei identification. k=4 tends to work well, but consistent results across biopsies with variable stains requires more advanced algorithms. Also, computationally inefficient approach.

Gaussian blur with the given parameters seemed to reduce noise most effectively across images within the dataset. HSV colorspace performed better than LUV in many cases.

Image witheld due to privacy contraints.
