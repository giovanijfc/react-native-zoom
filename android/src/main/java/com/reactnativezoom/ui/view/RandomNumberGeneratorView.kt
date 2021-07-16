package com.reactnativezoom.ui.view

import android.view.View
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import com.facebook.react.uimanager.ThemedReactContext
import com.reactnativezoom.R

class RandomNumberGeneratorView : LinearLayout {
  var mContext: ThemedReactContext;
  var aleatoryNumber: Int = 0;

  constructor(context: ThemedReactContext) : super(context) {
    this.mContext = context
    init();
  }

  private fun updateRandomNumberLabel() {
    this.aleatoryNumber = (0 until 100).shuffled().last()
    val randomNumberLabel: TextView = findViewById(R.id.txt_random_number)
    randomNumberLabel.text = "" + this.aleatoryNumber.toString();
  }

  private fun init() {
    View.inflate(mContext, R.layout.random_number_generator, this)

    val randomNumberButton: Button = findViewById(R.id.btn_generator_random)
    randomNumberButton.setOnClickListener {
      this.updateRandomNumberLabel()
    }
  }
}
