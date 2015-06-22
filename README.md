# BaconSoap/Scripts

Collection of scripts on my computers that are small enough that they don't deserver their own repos.

## Scripts

### `install.sh` - symlink all scripts

Run `./install.sh` to symlink all of the scripts to the designated install folder - defaults to `/usr/local/bin`. Writes all symlinked files to `.linked_files`.

## `sh/`

### `syncv` - shovel the current folder to a server

Copies the current folder to a remote server - great for throwing up folders as static sites (see [scratch.varnerin.info](http://scratch.varnerin.info)). Requires `rsync` to be installed on local system.

Usage:

- `syncv target_name`
  - puts the current folder into the sync directory using `target_name` as the sub-directory
  - saves `target_name` into `.syncv`, making subsequent bare `syncv` runs use that `target_name`
- `syncv`
  - sync the folder using the saved `target_name` from `.syncv`, or
  - puts the current folder into the sync directory using the current folder name as the sub-directory - `~/github/scratch` will be synced to `syncFolder/scratch`

By default, `syncv` needs the following environment variables set:

- `SCRATCH_USER_SERVER="user@hostname.com"`
- `SCRATCH_BASE_PATH="/var/www/example"`
- `SCRATCH_BASE_URL="http://scratch.varnerin.info"`

### `connectvm` - connect to a vm over smb

Mounts an SMB share to `~/smb/share_name` and enumerates the file list for faster subsequent access.

Usage:

- `connectvm sharename`
  - connects to the `sharename` share on `$WINDOWS_VM_SMB` and mounts it to `~/smb/sharename`

By default, `connectvm` needs the following environment variables set:

- `WINDOWS_VM_SMB="//user@hostname"`

### `flushdns` - flushes the DNS cache

Flushes the system's DNS cache. Requires `sudo` permissions.

Usage:

- `flushdns`
