package ${kotlinEscapedPackageName}

import com.qingmei2.rhine.ext.viewmodel.addLifecycle
import org.kodein.di.android.AndroidComponentsWeakScope
import org.kodein.di.generic.*

const val ${extractLetters(objectKind?upper_case)}_MODULE_TAG = "${extractLetters(objectKind?upper_case)}_MODULE_TAG"

val ${kodeinModuleName} = Kodein.Module(${extractLetters(objectKind?upper_case)}_MODULE_TAG) {

    bind<${viewDelegateClass}>() with scoped(AndroidComponentsWeakScope).singleton {
        ${viewDelegateClass}(instance())
    }

    bind<${viewModelClass}>() with scoped(AndroidComponentsWeakScope).singleton {
        ${viewModelClass}().apply {
            addLifecycle(instance<${className}>())
        }
    }
}