# Mandeye Controller Hardware

This repository contains OpenSCAD design files for the Mandeye Controller Hardware.

## CI/CD

### Automated STL Generation

The repository includes a GitHub Actions workflow that automatically compiles all OpenSCAD (.scad) files to STL format.

**Workflow**: `.github/workflows/build-stl.yml`

**Triggers**:
- Push to `main` or `master` branch
- Pull requests to `main` or `master` branch
- Manual trigger via workflow dispatch

**Compiled files**:
- `bottom.scad` → `bottom.stl`
- `lid-mid360.scad` → `lid-mid360.stl`
- `Cameras/UC_261.scad` → `UC_261.stl`
- `Cameras/UC_A173.scad` → `UC_A173.stl`
- `Cameras/UC_261_Mid360.scad` → `UC_261_Mid360.stl`
- `Cameras/UC_A173_LidarCover.scad` → `UC_A173_LidarCover.stl`
- `LidarCover/Mid360Cover.scad` → `Mid360Cover.stl`

**Artifacts**: 
STL files are uploaded as GitHub Actions artifacts and retained for 90 days. You can download them from the workflow run page.

## Local Development

### Prerequisites

- OpenSCAD 2021.01 or later

### Compiling to STL

To compile a SCAD file to STL format locally:

```bash
openscad -o output.stl input.scad
```

Example:
```bash
openscad -o bottom.stl bottom.scad
```
