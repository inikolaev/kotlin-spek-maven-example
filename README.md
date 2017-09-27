When running this these tests I get the following error:

```bash
$ java -version
java version "9"
Java(TM) SE Runtime Environment (build 9+181)
Java HotSpot(TM) 64-Bit Server VM (build 9+181, mixed mode)

$ mvn -e clean test
[INFO] Error stacktraces are turned on.
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building spek 1.0
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ spek ---
[INFO] Deleting /Users/auser/kotlin-spek-maven-example/target
[INFO]
[INFO] --- kotlin-maven-plugin:1.1.50:compile (compile) @ spek ---
[INFO] Kotlin version 1.1.50 (JRE 9+181)
[WARNING] No sources found skipping Kotlin compile
[INFO]
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ spek ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory /Users/auser/kotlin-spek-maven-example/src/main/resources
[INFO]
[INFO] --- maven-compiler-plugin:3.6.1:compile (java-compile) @ spek ---
[INFO] No sources to compile
[INFO]
[INFO] --- kotlin-maven-plugin:1.1.50:test-compile (test-compile) @ spek ---
[INFO] Kotlin version 1.1.50 (JRE 9+181)
[WARNING] Source root doesn't exist: /Users/auser/kotlin-spek-maven-example/src/test/java
[INFO] Compiling Kotlin sources from [/Users/auser/kotlin-spek-maven-example/src/test/kotlin]
[INFO] Module name is spek
WARNING: An illegal reflective access operation has occurred
WARNING: Illegal reflective access by com.intellij.util.text.StringFactory (file:/Users/auser/.m2/repository/org/jetbrains/kotlin/kotlin-compiler/1.1.50/kotlin-compiler-1.1.50.jar) to constructor java.lang.String(char[],boolean)
WARNING: Please consider reporting this to the maintainers of com.intellij.util.text.StringFactory
WARNING: Use --illegal-access=warn to enable warnings of further illegal reflective access operations
WARNING: All illegal access operations will be denied in a future release
[WARNING] Runtime JAR files in the classpath should have the same version. These files were found in the classpath:
    /Users/auser/.m2/repository/org/jetbrains/kotlin/kotlin-stdlib/1.1.50/kotlin-stdlib-1.1.50.jar (version 1.1)
    /Users/auser/.m2/repository/org/jetbrains/kotlin/kotlin-reflect/1.0.6/kotlin-reflect-1.0.6.jar (version 1.0)
[WARNING] Consider providing an explicit dependency on kotlin-reflect 1.1 to prevent strange errors
[WARNING] Some runtime JAR files in the classpath have an incompatible version. Consider removing them from the classpath or use '-Xskip-runtime-version-check' to suppress this warning
[INFO]
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ spek ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory /Users/auser/kotlin-spek-maven-example/src/test/resources
[INFO]
[INFO] --- maven-compiler-plugin:3.6.1:testCompile (java-test-compile) @ spek ---
[INFO] No sources to compile
[INFO]
[INFO] --- maven-surefire-plugin:2.20.1:test (default-test) @ spek ---
[INFO] Surefire report directory: /Users/auser/kotlin-spek-maven-example/target/surefire-reports
[INFO] Using configured provider org.junit.platform.surefire.provider.JUnitPlatformProvider
[INFO] parallel='none', perCoreThreadCount=true, threadCount=0, useUnlimitedThreads=false, threadCountSuites=0, threadCountClasses=0, threadCountMethods=0, parallelOptimized=true
[INFO]
[INFO] -------------------------------------------------------
[INFO]  T E S T S
[INFO] -------------------------------------------------------
[INFO]
[INFO] Results:
[INFO]
[INFO] Tests run: 0, Failures: 0, Errors: 0, Skipped: 0
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 8.764 s
[INFO] Finished at: 2017-09-27T22:58:06+03:00
[INFO] Final Memory: 23M/78M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.20.1:test (default-test) on project spek: There are test failures.
[ERROR]
[ERROR] Please refer to /Users/auser/kotlin-spek-maven-example/target/surefire-reports for the individual test results.
[ERROR] Please refer to dump files (if any exist) [date]-jvmRun[N].dump, [date].dumpstream and [date]-jvmRun[N].dumpstream.
[ERROR] There was an error in the forked process
[ERROR] org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
[ERROR] org.apache.maven.surefire.booter.SurefireBooterForkException: There was an error in the forked process
[ERROR] org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
[ERROR] at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:673)
[ERROR] at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:535)
[ERROR] at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:280)
[ERROR] at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:245)
[ERROR] at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeProvider(AbstractSurefireMojo.java:1124)
[ERROR] at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeAfterPreconditionsChecked(AbstractSurefireMojo.java:954)
[ERROR] at org.apache.maven.plugin.surefire.AbstractSurefireMojo.execute(AbstractSurefireMojo.java:832)
[ERROR] at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:134)
[ERROR] at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:207)
[ERROR] at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:153)
[ERROR] at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:145)
[ERROR] at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:116)
[ERROR] at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:80)
[ERROR] at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build(SingleThreadedBuilder.java:51)
[ERROR] at org.apache.maven.lifecycle.internal.LifecycleStarter.execute(LifecycleStarter.java:128)
[ERROR] at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:307)
[ERROR] at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:193)
[ERROR] at org.apache.maven.DefaultMaven.execute(DefaultMaven.java:106)
[ERROR] at org.apache.maven.cli.MavenCli.execute(MavenCli.java:863)
[ERROR] at org.apache.maven.cli.MavenCli.doMain(MavenCli.java:288)
[ERROR] at org.apache.maven.cli.MavenCli.main(MavenCli.java:199)
[ERROR] at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
[ERROR] at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
[ERROR] at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
[ERROR] at java.base/java.lang.reflect.Method.invoke(Method.java:564)
[ERROR] at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced(Launcher.java:289)
[ERROR] at org.codehaus.plexus.classworlds.launcher.Launcher.launch(Launcher.java:229)
[ERROR] at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode(Launcher.java:415)
[ERROR] at org.codehaus.plexus.classworlds.launcher.Launcher.main(Launcher.java:356)
[ERROR] -> [Help 1]
org.apache.maven.lifecycle.LifecycleExecutionException: Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.20.1:test (default-test) on project spek: There are test failures.

Please refer to /Users/auser/kotlin-spek-maven-example/target/surefire-reports for the individual test results.
Please refer to dump files (if any exist) [date]-jvmRun[N].dump, [date].dumpstream and [date]-jvmRun[N].dumpstream.
There was an error in the forked process
org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
org.apache.maven.surefire.booter.SurefireBooterForkException: There was an error in the forked process
org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:673)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:535)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:280)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:245)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeProvider(AbstractSurefireMojo.java:1124)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeAfterPreconditionsChecked(AbstractSurefireMojo.java:954)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.execute(AbstractSurefireMojo.java:832)
    at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:134)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:207)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:153)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:145)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:116)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:80)
    at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build(SingleThreadedBuilder.java:51)
    at org.apache.maven.lifecycle.internal.LifecycleStarter.execute(LifecycleStarter.java:128)
    at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:307)
    at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:193)
    at org.apache.maven.DefaultMaven.execute(DefaultMaven.java:106)
    at org.apache.maven.cli.MavenCli.execute(MavenCli.java:863)
    at org.apache.maven.cli.MavenCli.doMain(MavenCli.java:288)
    at org.apache.maven.cli.MavenCli.main(MavenCli.java:199)
    at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    at java.base/java.lang.reflect.Method.invoke(Method.java:564)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced(Launcher.java:289)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launch(Launcher.java:229)
    at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode(Launcher.java:415)
    at org.codehaus.plexus.classworlds.launcher.Launcher.main(Launcher.java:356)

    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:212)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:153)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:145)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:116)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:80)
    at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build(SingleThreadedBuilder.java:51)
    at org.apache.maven.lifecycle.internal.LifecycleStarter.execute(LifecycleStarter.java:128)
    at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:307)
    at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:193)
    at org.apache.maven.DefaultMaven.execute(DefaultMaven.java:106)
    at org.apache.maven.cli.MavenCli.execute(MavenCli.java:863)
    at org.apache.maven.cli.MavenCli.doMain(MavenCli.java:288)
    at org.apache.maven.cli.MavenCli.main(MavenCli.java:199)
    at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    at java.base/java.lang.reflect.Method.invoke(Method.java:564)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced(Launcher.java:289)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launch(Launcher.java:229)
    at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode(Launcher.java:415)
    at org.codehaus.plexus.classworlds.launcher.Launcher.main(Launcher.java:356)
Caused by: org.apache.maven.plugin.MojoExecutionException: There are test failures.

Please refer to /Users/auser/kotlin-spek-maven-example/target/surefire-reports for the individual test results.
Please refer to dump files (if any exist) [date]-jvmRun[N].dump, [date].dumpstream and [date]-jvmRun[N].dumpstream.
There was an error in the forked process
org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
org.apache.maven.surefire.booter.SurefireBooterForkException: There was an error in the forked process
org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:673)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:535)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:280)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:245)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeProvider(AbstractSurefireMojo.java:1124)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeAfterPreconditionsChecked(AbstractSurefireMojo.java:954)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.execute(AbstractSurefireMojo.java:832)
    at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:134)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:207)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:153)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:145)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:116)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:80)
    at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build(SingleThreadedBuilder.java:51)
    at org.apache.maven.lifecycle.internal.LifecycleStarter.execute(LifecycleStarter.java:128)
    at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:307)
    at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:193)
    at org.apache.maven.DefaultMaven.execute(DefaultMaven.java:106)
    at org.apache.maven.cli.MavenCli.execute(MavenCli.java:863)
    at org.apache.maven.cli.MavenCli.doMain(MavenCli.java:288)
    at org.apache.maven.cli.MavenCli.main(MavenCli.java:199)
    at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    at java.base/java.lang.reflect.Method.invoke(Method.java:564)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced(Launcher.java:289)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launch(Launcher.java:229)
    at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode(Launcher.java:415)
    at org.codehaus.plexus.classworlds.launcher.Launcher.main(Launcher.java:356)

    at org.apache.maven.plugin.surefire.SurefireHelper.throwException(SurefireHelper.java:235)
    at org.apache.maven.plugin.surefire.SurefireHelper.reportExecution(SurefireHelper.java:112)
    at org.apache.maven.plugin.surefire.SurefirePlugin.handleSummary(SurefirePlugin.java:354)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeAfterPreconditionsChecked(AbstractSurefireMojo.java:984)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.execute(AbstractSurefireMojo.java:832)
    at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:134)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:207)
    ... 20 more
Caused by: org.apache.maven.surefire.booter.SurefireBooterForkException: There was an error in the forked process
org.apache.maven.surefire.report.RunListener.testSetStarting(Lorg/apache/maven/surefire/report/ReportEntry;)V
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:673)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.fork(ForkStarter.java:535)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:280)
    at org.apache.maven.plugin.surefire.booterclient.ForkStarter.run(ForkStarter.java:245)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeProvider(AbstractSurefireMojo.java:1124)
    at org.apache.maven.plugin.surefire.AbstractSurefireMojo.executeAfterPreconditionsChecked(AbstractSurefireMojo.java:954)
    ... 23 more
[ERROR]
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR]
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```

