package ${kotlinEscapedPackageName}

import android.os.Bundle
import android.view.View
import org.kodein.di.Kodein
import org.kodein.di.generic.instance
<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.base.BaseFragment
import ${applicationPackage}.databinding.${fragmentBindingClass}
</#if>

class ${className} : BaseFragment<${fragmentBindingClass}>() {

    override val kodein: Kodein = Kodein.lazy {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    private val viewDelegate: ${viewDelegateClass} by instance()

    override val layoutId: Int = R.layout.${fragment_layout}

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        binding.delegate = viewDelegate
    }
}
