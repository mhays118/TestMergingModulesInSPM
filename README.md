# ExampleMergeSwiftModules

Example library showing how to break a library into multiple modules, but only require the consuming app to use a single import statement.

## What this example shows:
For two targets, `MainTarget` and `CoreTarget`, where `MainTarget` depends on `CoreTarget`, we want to be able to write:

```swift
import MainTarget
```

And that is it, not:

```swift
import CoreTarget
import MainTarget
```

[This is possible](https://forums.swift.org/t/package-module-visibility-for-libraries/37896/3), if in `MainTarget`, as done in this example project, this is added:
```swift
@_exported import CoreTarget
```
It will not prevent users/consumers of `MainTarget` from manually importing `CoreTarget`, but it will not be required.

[Note that this is an experimental feature](https://forums.swift.org/t/spm-merge-multiple-targets-into-a-single-module/45012).

## Create XCFrameworks
Create XCFrameworks with:
```
swift create-xcframework CoreTarget MainTarget --zip
```
Note that all targets need to be listed.

## Related
To see how to distribute as XCFrameworks, look at the following repo:
https://github.com/mhays118/TestDistributingXCFrameworks


For example consuming app (with single import), see:
https://github.com/mhays118/TestSPMLibraryConsumerApp
