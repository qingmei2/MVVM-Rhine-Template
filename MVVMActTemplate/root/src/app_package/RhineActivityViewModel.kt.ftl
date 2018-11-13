package ${kotlinEscapedPackageName}

import ${applicationPackage}.base.BaseViewModel
import android.arch.lifecycle.LifecycleOwner
import com.qingmei2.rhine.ext.viewmodel.addLifecycle

class ${viewModelClass} : BaseViewModel(){


    companion object {

        fun instance(lifecycleOwner: LifecycleOwner) =
                ${viewModelClass}().apply {
                    addLifecycle(lifecycleOwner)
                }
    }
}