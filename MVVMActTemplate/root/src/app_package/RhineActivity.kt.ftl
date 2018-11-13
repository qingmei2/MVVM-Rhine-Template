package ${kotlinEscapedPackageName}

import android.support.v4.app.FragmentActivity
import android.content.Intent
import android.os.Bundle
import org.kodein.di.Kodein
import org.kodein.di.generic.instance
import org.kodein.di.android.retainedKodein
<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.base.BaseActivity
import ${applicationPackage}.databinding.${activityBindingClass}
</#if>

class ${className} : BaseActivity<${activityBindingClass}>() {

    override val kodein: Kodein by retainedKodein {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    private val delegate: ${viewDelegateClass} by instance()

    override val layoutId: Int = R.layout.${activity_layout}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding.delegate = delegate
    }

    companion object {

        fun launch(activity: FragmentActivity) =
                activity.apply {
                    startActivity(Intent(this, ${className}::class.java))
                }
    }
}
