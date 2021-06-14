# ExampleMergeSwiftModules

Example library showing how to break a library into multiple modules, but only require the consuming app to use a single import statement.


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
