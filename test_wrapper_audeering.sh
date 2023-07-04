#!/usr/bin/env bash
#
#
# Documentation states to run test generation as:
#
# 4. Run `test.sh` as:
# ```
# sh test.sh <model_dir>/seq2seq_mol_ppg2mel_vctk_libri_oneshotvc_r4_normMel_v2.yaml <model_dir>/best_loss_step_304000.pth \
#   <source_wav_dir> <ref_wavpath>
# ```
# The converted wavs are saved in the folder `vc_gen_wavs`.
#
# This code is a wrapper around it that parametrizes accoring to convention.
# This assumes that the One-shot VC models that are available from gdrive
# are committed as lfs into the directory `ppg-vc-liusongxiang`
# This allows to hardcode below specifications and simpliefies getting the code to run itnially
#
model_dir=./ppg-vc-liusongxiang/bneSeq2seqMoL-vctk-libritts460-oneshot/
conf_file=seq2seq_mol_ppg2mel_vctk_libri_oneshotvc_r4_normMel_v2.yaml
ckpt=best_loss_step_304000.pth

src_wav_dir=./cg_src_wav_dir/
ref_wavpath=./ppg-vc-liusongxiang/obama_1.wav

sh test.sh ${model_dir}/${conf_file} ${model_dir}/${ckpt} ${src_wav_dir} ${ref_wavpath}
