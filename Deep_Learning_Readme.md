# Deep Learning Instructions

Before attempting to run any deep learning code, follow the instructions in
Readme.md to verify that you can build and a version of standard PCC first.

## Using a trained agent

- Start a server as usual:

```shell
$ cd src
$ sh recv.sh
```

- Start the udt side of the environment:

```shell
$ cd src
$ source send.sh
```

parameters in `send.sh`:

- pypath=/path/to/pcc-rl/src/udt-plugins/testing/
- model-path=/path/to/your/model/

This should begin running the specified agent on the localhost connection. To run on a real world link, run the sender and receiver on different machines and adjust the IP addresses appropriately.

## Online training

- Start a server as usual:

```shell
$ cd src
$ sh recv.sh
```

- Start the gym side of the training environment from the pcc-rl repo:

```shell
$ cd pcc-rl/src/gym/online/
$ python3 shim_solver.py
```

- Start the udt side of the training environment (on the same machine as the shim\_solver):

```shell
$ cd src
$ sh send_train.sh
```

parameters in `send_train.sh`:

- pypath=/path/to/pcc-rl/src/udt-plugins/training/
- model-path=/path/to/your/model/

This should begin online training on the localhost connection. To train on a real world link, run the sender and receiver on different machines and adjust the IP addresses appropriately.
