# csilk's auto macos setup

Got sick of doing this over and over, thought i'd automate it

## Running

```
mkdir ~/temp && cd ~/temp && curl -#L https://github.com/csi-lk/macos-setup/tarball/master | tar -xzv --strip-components 1 --exclude={README.md} && ./init.sh
```