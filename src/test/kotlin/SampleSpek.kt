package fi.zalando.icecube.sherlock

import org.jetbrains.spek.api.Spek
import org.jetbrains.spek.api.dsl.describe
import org.jetbrains.spek.api.dsl.given
import org.jetbrains.spek.api.dsl.it
import org.jetbrains.spek.api.dsl.on
import kotlin.test.assertTrue

class SampleSpek: Spek({
    given("context") {
        on("action") {
            //it("should fail") {
            //    assertTrue(false)
            //}

            it("should pass") {
                assertTrue(true)
            }
        }
    }
})
