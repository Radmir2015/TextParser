procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.label3 := new System.Windows.Forms.Label();
        self.textBox3 := new System.Windows.Forms.TextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.label4 := new System.Windows.Forms.Label();
        self.textBox4 := new System.Windows.Forms.TextBox();
        self.progressBar1 := new System.Windows.Forms.ProgressBar();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.openFileDialog1 := new System.Windows.Forms.OpenFileDialog();
        self.button2 := new System.Windows.Forms.Button();
        self.label5 := new System.Windows.Forms.Label();
        self.saveFileDialog1 := new System.Windows.Forms.SaveFileDialog();
        self.button3 := new System.Windows.Forms.Button();
        self.label6 := new System.Windows.Forms.Label();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.label13 := new System.Windows.Forms.Label();
        self.label11 := new System.Windows.Forms.Label();
        self.label10 := new System.Windows.Forms.Label();
        self.label12 := new System.Windows.Forms.Label();
        self.label9 := new System.Windows.Forms.Label();
        self.checkBox5 := new System.Windows.Forms.CheckBox();
        self.checkBox4 := new System.Windows.Forms.CheckBox();
        self.checkBox3 := new System.Windows.Forms.CheckBox();
        self.checkBox2 := new System.Windows.Forms.CheckBox();
        self.checkBox1 := new System.Windows.Forms.CheckBox();
        self.textBox5 := new System.Windows.Forms.TextBox();
        self.textBox6 := new System.Windows.Forms.TextBox();
        self.label7 := new System.Windows.Forms.Label();
        self.label8 := new System.Windows.Forms.Label();
        self.textBox7 := new System.Windows.Forms.TextBox();
        self.checkBox6 := new System.Windows.Forms.CheckBox();
        self.checkBox7 := new System.Windows.Forms.CheckBox();
        self.checkBox8 := new System.Windows.Forms.CheckBox();
        self.label14 := new System.Windows.Forms.Label();
        self.label15 := new System.Windows.Forms.Label();
        self.label16 := new System.Windows.Forms.Label();
        self.checkBox9 := new System.Windows.Forms.CheckBox();
        self.label17 := new System.Windows.Forms.Label();
        self.groupBox1.SuspendLayout();
        self.SuspendLayout();
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(12, 9);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(100, 20);
        self.label1.TabIndex := 1;
        self.label1.Text := 'Введите маску:';
        self.label1.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label2
        // 
        self.label2.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label2.Location := new System.Drawing.Point(12, 35);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(100, 20);
        self.label2.TabIndex := 1;
        self.label2.Text := 'Длина слов:';
        self.label2.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // textBox2
        // 
        self.textBox2.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox2.Location := new System.Drawing.Point(118, 37);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(154, 22);
        self.textBox2.TabIndex := 2;
        // 
        // label3
        // 
        self.label3.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label3.Location := new System.Drawing.Point(12, 61);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(100, 20);
        self.label3.TabIndex := 1;
        self.label3.Text := 'Общая длина:';
        self.label3.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // textBox3
        // 
        self.textBox3.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox3.Location := new System.Drawing.Point(118, 63);
        self.textBox3.Name := 'textBox3';
        self.textBox3.Size := new System.Drawing.Size(154, 22);
        self.textBox3.TabIndex := 3;
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(197, 307);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(75, 23);
        self.button1.TabIndex := 18;
        self.button1.Text := 'Создать!';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // label4
        // 
        self.label4.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label4.Location := new System.Drawing.Point(12, 87);
        self.label4.Name := 'label4';
        self.label4.Size := new System.Drawing.Size(100, 20);
        self.label4.TabIndex := 1;
        self.label4.Text := 'Кол-во строк:';
        self.label4.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // textBox4
        // 
        self.textBox4.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox4.Location := new System.Drawing.Point(118, 89);
        self.textBox4.Name := 'textBox4';
        self.textBox4.Size := new System.Drawing.Size(154, 22);
        self.textBox4.TabIndex := 4;
        // 
        // progressBar1
        // 
        self.progressBar1.Location := new System.Drawing.Point(12, 307);
        self.progressBar1.Name := 'progressBar1';
        self.progressBar1.Size := new System.Drawing.Size(174, 23);
        self.progressBar1.TabIndex := 3;
        // 
        // textBox1
        // 
        self.textBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox1.Location := new System.Drawing.Point(118, 11);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(154, 22);
        self.textBox1.TabIndex := 1;
        self.textBox1.Text := '*';
        // 
        // openFileDialog1
        // 
        self.openFileDialog1.FileName := 'File';
        // 
        // button2
        // 
        self.button2.Location := new System.Drawing.Point(12, 251);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(100, 23);
        self.button2.TabIndex := 16;
        self.button2.Text := 'Выбрать файл';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // label5
        // 
        self.label5.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label5.Location := new System.Drawing.Point(118, 251);
        self.label5.Name := 'label5';
        self.label5.Size := new System.Drawing.Size(154, 20);
        self.label5.TabIndex := 1;
        self.label5.TextAlign := System.Drawing.ContentAlignment.MiddleLeft;
        self.label5.MouseClick += label5_MouseClick;
        // 
        // saveFileDialog1
        // 
        self.saveFileDialog1.FileName := 'File';
        // 
        // button3
        // 
        self.button3.Location := new System.Drawing.Point(12, 279);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(100, 23);
        self.button3.TabIndex := 17;
        self.button3.Text := 'Сохранить файл';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // label6
        // 
        self.label6.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label6.Location := new System.Drawing.Point(118, 279);
        self.label6.Name := 'label6';
        self.label6.Size := new System.Drawing.Size(154, 20);
        self.label6.TabIndex := 1;
        self.label6.TextAlign := System.Drawing.ContentAlignment.MiddleLeft;
        self.label6.MouseClick += label6_MouseClick;
        // 
        // groupBox1
        // 
        self.groupBox1.BackColor := System.Drawing.SystemColors.Control;
        self.groupBox1.Controls.Add(self.label13);
        self.groupBox1.Controls.Add(self.label11);
        self.groupBox1.Controls.Add(self.label10);
        self.groupBox1.Controls.Add(self.label12);
        self.groupBox1.Controls.Add(self.label9);
        self.groupBox1.Controls.Add(self.checkBox5);
        self.groupBox1.Controls.Add(self.checkBox4);
        self.groupBox1.Controls.Add(self.checkBox3);
        self.groupBox1.Controls.Add(self.checkBox2);
        self.groupBox1.Controls.Add(self.checkBox1);
        self.groupBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.groupBox1.Location := new System.Drawing.Point(12, 110);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(260, 55);
        self.groupBox1.TabIndex := 4;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Заглавные буквы';
        // 
        // label13
        // 
        self.label13.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label13.Location := new System.Drawing.Point(191, 16);
        self.label13.Name := 'label13';
        self.label13.Size := new System.Drawing.Size(62, 14);
        self.label13.TabIndex := 1;
        self.label13.Text := 'Случайные';
        self.label13.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label11
        // 
        self.label11.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label11.Location := new System.Drawing.Point(99, 16);
        self.label11.Name := 'label11';
        self.label11.Size := new System.Drawing.Size(63, 14);
        self.label11.TabIndex := 1;
        self.label11.Text := 'Последняя';
        self.label11.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label10
        // 
        self.label10.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label10.Location := new System.Drawing.Point(50, 16);
        self.label10.Name := 'label10';
        self.label10.Size := new System.Drawing.Size(50, 14);
        self.label10.TabIndex := 1;
        self.label10.Text := 'Средняя';
        self.label10.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label12
        // 
        self.label12.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label12.Location := new System.Drawing.Point(163, 16);
        self.label12.Name := 'label12';
        self.label12.Size := new System.Drawing.Size(26, 14);
        self.label12.TabIndex := 1;
        self.label12.Text := 'Все';
        self.label12.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label9
        // 
        self.label9.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label9.Location := new System.Drawing.Point(6, 16);
        self.label9.Name := 'label9';
        self.label9.Size := new System.Drawing.Size(45, 14);
        self.label9.TabIndex := 1;
        self.label9.Text := 'Первая';
        self.label9.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // checkBox5
        // 
        self.checkBox5.Location := new System.Drawing.Point(215, 33);
        self.checkBox5.Name := 'checkBox5';
        self.checkBox5.Size := new System.Drawing.Size(14, 16);
        self.checkBox5.TabIndex := 9;
        self.checkBox5.Text := 'checkBox5';
        self.checkBox5.UseVisualStyleBackColor := true;
        // 
        // checkBox4
        // 
        self.checkBox4.Location := new System.Drawing.Point(169, 33);
        self.checkBox4.Name := 'checkBox4';
        self.checkBox4.Size := new System.Drawing.Size(14, 16);
        self.checkBox4.TabIndex := 8;
        self.checkBox4.Text := 'checkBox4';
        self.checkBox4.UseVisualStyleBackColor := true;
        // 
        // checkBox3
        // 
        self.checkBox3.Location := new System.Drawing.Point(123, 33);
        self.checkBox3.Name := 'checkBox3';
        self.checkBox3.Size := new System.Drawing.Size(14, 16);
        self.checkBox3.TabIndex := 7;
        self.checkBox3.Text := 'checkBox3';
        self.checkBox3.UseVisualStyleBackColor := true;
        // 
        // checkBox2
        // 
        self.checkBox2.Location := new System.Drawing.Point(68, 33);
        self.checkBox2.Name := 'checkBox2';
        self.checkBox2.Size := new System.Drawing.Size(14, 16);
        self.checkBox2.TabIndex := 6;
        self.checkBox2.Text := 'checkBox2';
        self.checkBox2.UseVisualStyleBackColor := true;
        // 
        // checkBox1
        // 
        self.checkBox1.Location := new System.Drawing.Point(23, 33);
        self.checkBox1.Name := 'checkBox1';
        self.checkBox1.Size := new System.Drawing.Size(14, 16);
        self.checkBox1.TabIndex := 5;
        self.checkBox1.Text := 'checkBox1';
        self.checkBox1.UseVisualStyleBackColor := true;
        // 
        // textBox5
        // 
        self.textBox5.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox5.Location := new System.Drawing.Point(118, 170);
        self.textBox5.Name := 'textBox5';
        self.textBox5.Size := new System.Drawing.Size(154, 22);
        self.textBox5.TabIndex := 10;
        // 
        // textBox6
        // 
        self.textBox6.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox6.Location := new System.Drawing.Point(150, 230);
        self.textBox6.Name := 'textBox6';
        self.textBox6.Size := new System.Drawing.Size(122, 22);
        self.textBox6.TabIndex := 15;
        self.textBox6.Text := '.';
        // 
        // label7
        // 
        self.label7.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label7.Location := new System.Drawing.Point(12, 168);
        self.label7.Name := 'label7';
        self.label7.Size := new System.Drawing.Size(100, 20);
        self.label7.TabIndex := 1;
        self.label7.Text := 'Разделители:';
        self.label7.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label8
        // 
        self.label8.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label8.Location := new System.Drawing.Point(12, 228);
        self.label8.Name := 'label8';
        self.label8.Size := new System.Drawing.Size(132, 20);
        self.label8.TabIndex := 1;
        self.label8.Text := 'Конечный символ:';
        self.label8.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // textBox7
        // 
        self.textBox7.Location := new System.Drawing.Point(12, 336);
        self.textBox7.Multiline := true;
        self.textBox7.Name := 'textBox7';
        self.textBox7.ReadOnly := true;
        self.textBox7.Size := new System.Drawing.Size(260, 40);
        self.textBox7.TabIndex := 19;
        self.textBox7.Text := 'Парсер текста (версия от 09.10.16)'#13#10'Автор: Акжигитов Радмир';
        self.textBox7.TextAlign := System.Windows.Forms.HorizontalAlignment.Center;
        // 
        // checkBox6
        // 
        self.checkBox6.Location := new System.Drawing.Point(118, 196);
        self.checkBox6.Name := 'checkBox6';
        self.checkBox6.Size := new System.Drawing.Size(13, 13);
        self.checkBox6.TabIndex := 11;
        self.checkBox6.Text := 'checkBox6';
        self.checkBox6.UseVisualStyleBackColor := true;
        self.checkBox6.CheckedChanged += checkBox6_CheckedChanged;
        // 
        // checkBox7
        // 
        self.checkBox7.Location := new System.Drawing.Point(118, 213);
        self.checkBox7.Name := 'checkBox7';
        self.checkBox7.Size := new System.Drawing.Size(13, 13);
        self.checkBox7.TabIndex := 12;
        self.checkBox7.Text := 'checkBox6';
        self.checkBox7.UseVisualStyleBackColor := true;
        self.checkBox7.CheckedChanged += checkBox7_CheckedChanged;
        // 
        // checkBox8
        // 
        self.checkBox8.Location := new System.Drawing.Point(248, 196);
        self.checkBox8.Name := 'checkBox8';
        self.checkBox8.Size := new System.Drawing.Size(13, 13);
        self.checkBox8.TabIndex := 13;
        self.checkBox8.Text := 'checkBox6';
        self.checkBox8.UseVisualStyleBackColor := true;
        self.checkBox8.CheckedChanged += checkBox8_CheckedChanged;
        // 
        // label14
        // 
        self.label14.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label14.Location := new System.Drawing.Point(18, 192);
        self.label14.Name := 'label14';
        self.label14.Size := new System.Drawing.Size(94, 17);
        self.label14.TabIndex := 7;
        self.label14.Text := 'Ген: слово';
        self.label14.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label15
        // 
        self.label15.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label15.Location := new System.Drawing.Point(18, 209);
        self.label15.Name := 'label15';
        self.label15.Size := new System.Drawing.Size(94, 17);
        self.label15.TabIndex := 7;
        self.label15.Text := 'С пробелом';
        self.label15.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label16
        // 
        self.label16.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label16.Location := new System.Drawing.Point(148, 192);
        self.label16.Name := 'label16';
        self.label16.Size := new System.Drawing.Size(94, 17);
        self.label16.TabIndex := 7;
        self.label16.Text := 'Обработка';
        self.label16.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // checkBox9
        // 
        self.checkBox9.Location := new System.Drawing.Point(248, 213);
        self.checkBox9.Name := 'checkBox9';
        self.checkBox9.Size := new System.Drawing.Size(13, 13);
        self.checkBox9.TabIndex := 14;
        self.checkBox9.Text := 'checkBox6';
        self.checkBox9.UseVisualStyleBackColor := true;
        self.checkBox9.CheckedChanged += checkBox7_CheckedChanged;
        // 
        // label17
        // 
        self.label17.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label17.Location := new System.Drawing.Point(148, 209);
        self.label17.Name := 'label17';
        self.label17.Size := new System.Drawing.Size(94, 17);
        self.label17.TabIndex := 7;
        self.label17.Text := 'Пустая строка';
        self.label17.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(284, 388);
        self.Controls.Add(self.label16);
        self.Controls.Add(self.label17);
        self.Controls.Add(self.label15);
        self.Controls.Add(self.label14);
        self.Controls.Add(self.checkBox8);
        self.Controls.Add(self.checkBox9);
        self.Controls.Add(self.checkBox7);
        self.Controls.Add(self.checkBox6);
        self.Controls.Add(self.textBox7);
        self.Controls.Add(self.progressBar1);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.label8);
        self.Controls.Add(self.label4);
        self.Controls.Add(self.label6);
        self.Controls.Add(self.label5);
        self.Controls.Add(self.label7);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.textBox6);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.textBox5);
        self.Controls.Add(self.textBox4);
        self.Controls.Add(self.textBox3);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.groupBox1);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedSingle;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MaximizeBox := false;
        self.Name := 'Form1';
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'TextParse';
        self.groupBox1.ResumeLayout(false);
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
