package ${kotlinEscapedPackageName}

import android.support.v7.app.AppCompatActivity
import org.kodein.di.Kodein
import org.kodein.di.android.support.AndroidLifecycleScope
import org.kodein.di.generic.*

const val ${extractLetters(objectKind?upper_case)}_MODULE_TAG = "${extractLetters(objectKind?upper_case)}_MODULE_TAG"

val ${kodeinModuleName} = Kodein.Module(${extractLetters(objectKind?upper_case)}_MODULE_TAG) {

    bind<${viewDelegateClass}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${viewDelegateClass}(instance())
    }

    bind<${viewModelClass}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${viewModelClass}.instance(context)
    }
}