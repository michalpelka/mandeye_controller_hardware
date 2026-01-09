# Mandeye Controller Hardware

This repository contains OpenSCAD design files for the Mandeye Controller Hardware.

## CI/CD

### Automated STL Generation

The repository includes two GitHub Actions workflows for handling STL file generation:

#### 1. Build STL Files (for testing)

**Workflow**: `.github/workflows/build-stl.yml`

**Triggers**:
- Push to `main` or `master` branch
- Pull requests to `main` or `master` branch
- Manual trigger via workflow dispatch

**Purpose**: Validates that all SCAD files can be compiled successfully. STL files are uploaded as GitHub Actions artifacts and retained for 90 days.

#### 2. Commit STL Files (for production)

**Workflow**: `.github/workflows/commit-stl.yml`

**Triggers**:
- Push to `master` branch only (after merge)
- Manual trigger via workflow dispatch

**Purpose**: Compiles all SCAD files and commits the resulting STL files to the `stl/` directory in the repository, making them available directly in the repo.

**Compiled files**:
- `bottom.scad` → `stl/bottom.stl`
- `lid-mid360.scad` → `stl/lid-mid360.stl`
- `Cameras/UC_261.scad` → `stl/UC_261.stl`
- `Cameras/UC_A173.scad` → `stl/UC_A173.stl`
- `Cameras/UC_261_Mid360.scad` → `stl/UC_261_Mid360.stl`
- `Cameras/UC_A173_LidarCover.scad` → `stl/UC_A173_LidarCover.stl`
- `LidarCover/Mid360Cover.scad` → `stl/Mid360Cover.stl`

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
