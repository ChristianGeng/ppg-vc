# -*- coding: utf-8 -*-


import audb


cache = "./cache"
num_workers = 4
sampling_rate = 16000
seed = 1


def load_libri():
    db_name = "librispeech"
    format = "wav"
    db = audb.load(db_name, format=format, num_workers=12)
    print(db)


def load_salamander_agent_tone():
    """This has been used in anonymiuation experiments hy hagen.

    see evaluate-agent-tone.py in
    /project/altavista-cc/experiments/anonymization-evaluation/

    """

    db = audb.load(
        "projectsmile-salamander-agent-tone",
        version="17.1.0",
        sampling_rate=sampling_rate,
        format="wav",
        channels=0,
        num_workers=num_workers,
        verbose=False,
    )

    print(db)
    breakpoint()



if __name__ == "__main__":
    # load_salamander_agent_tone()
