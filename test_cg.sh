#!/usr/bin/env bash
# 4. Run `test.sh` as:
# ```
# sh test.sh <model_dir>/seq2seq_mol_ppg2mel_vctk_libri_oneshotvc_r4_normMel_v2.yaml <model_dir>/best_loss_step_304000.pth \
#   <source_wav_dir> <ref_wavpath>
# ```
# The converted wavs are saved in the folder `vc_gen_wavs`.


model_dir=/data/work3/cgeng/work/project/altavista-cc/data/speaker-anonymization/models/ppg-vc-liusongxiang/bneSeq2seqMoL-vctk-libritts460-oneshot/
conf_file=seq2seq_mol_ppg2mel_vctk_libri_oneshotvc_r4_normMel_v2.yaml
ckpt=best_loss_step_304000.pth
# <source_wav_dir> <ref_wavpath>
#  <source_wav_dir> <ref_wavpath>
src_wav_dir=/data/work3/cgeng/work/project/altavista-cc/data/speaker-anonymization/src/tools/ppg-vc/cg_src_wav_dir/
ref_wavpath=/data/work3/cgeng/work/project/altavista-cc/data/speaker-anonymization/models/ppg-vc-liusongxiang/obama_1.wav


sh test.sh ${model_dir}/${conf_file} ${model_dir}/${ckpt} ${src_wav_dir} ${ref_wavpath}
