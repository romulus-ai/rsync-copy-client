# rsync-copy-client
Simple Docker image with Rsync that Copies content from a source to its destination

Environmentvariables:

* ID_RSA -> An SSH privatekey to use for Authentication at the source Server
* PORT -> The Port where the source server is reachable
* SRC -> The Source Address and/or Path
* DEST -> The Destination Address and/or Path

Best to be used in Cunjunction with my "rsync-server". Ideal to move Data from PVC in K8S 1 to PVC in K8S2.
