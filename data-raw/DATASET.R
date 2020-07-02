## code to prepare `DATASET` dataset goes here
library(neurobase)
library(extrantsr)
files = list.files(path = "inst", pattern = ".*T1.nii.gz",
                   recursive = TRUE, full.names = TRUE)
brain_masks = sub("T1[.]nii", "BrainMask.nii", files)

df = data.frame(t1 = files, mask = brain_masks, stringsAsFactors = FALSE)
df = df[ !file.exists(df$mask),]
for (idf in seq(nrow(df))) {
  file = df$t1[idf]
  mask = df$mask[idf]
  res = fslbet_robust(img = file, remover = "double_remove_neck")
  writenii(res > 0, mask)
  rm(res)
}