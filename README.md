# container-resources
Resources container for IBM Sterling B2B Integrator. Provide JDBC files, AWS jar files, ....


## Building IBM Sterling B2Bi images by manually

1. Clone this repository.
```bash
git clone https://github.com/ibm-sterling-devops/container-resources.git
```

2. Move to the directory.
```bash
cd container-resources
```

3. Build your image:

```bash
cd sb2bi-resources

podman build -t sb2bi-resources:1.0.0 .
```

## Test image

To run your container and start a shell session, use:

```bash
mkdir ˜/resources

cd ˜/resources

podman run -it --rm -v "$(pwd)":/ibm/resources -e DB_VENDOR=db2 -e RESOURCES_DIR_MOUNT=/ibm/resources localhost/sb2bi-resources:1.0.0
```

## Publish image to quay.io

1. Export variables

```bash
export MYUSER=
export MYPWD=
export MYREPO=
```

2. Before you can push your image to Quay.io, you need to log in.

```bash
podman login quay.io -u "$MYUSER" -p "$MYPWD"
```

3. Tag your image with your Quay.io repository name:

```bash
podman tag localhost/sb2bi-resources:1.0.0 quay.io/$MYREPO/sb2bi-resources:1.0.0
```

4. Finally, push your tagged image to Quay.io:

```bash
podman push quay.io/$MYREPO/sb2bi-resources:1.0.0
```

## Contributors

See the list of [contributors](https://github.com/ibm-sterling-devops/container-resources/contributors) who participated in this project.

## License

This project is licensed under the Eclipse Public License - v 2.0 - see the [LICENSE.md](LICENSE.md) file for details

## Disclaimer

This repository is a community-driven projects and is not officially supported or endorsed by IBM. While members of the community may include IBM employees, this project is independent of IBM's official support channels. Please note that any contributions, issues, or inquiries regarding this repository should be directed to the community maintainers and not to IBM's support teams. We appreciate your understanding and participation in this community-driven initiative.

This code can be used as is. And any feedback will be welcome. We does not make any warranty about the completeness, reliability and accuracy of this code. Any action you take by using this code is strictly at your own risk, and this project will not be liable for any losses and damages in connection with the use of this code.
