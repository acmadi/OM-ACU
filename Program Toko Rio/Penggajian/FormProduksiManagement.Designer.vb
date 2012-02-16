<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormProduksiManagement
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FormProduksiManagement))
        Me.ToolStripSeparator4 = New System.Windows.Forms.ToolStripSeparator
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.txtKdProduksi = New System.Windows.Forms.Label
        Me.lblKodekaryawan = New System.Windows.Forms.Label
        Me.txtAlamat = New System.Windows.Forms.TextBox
        Me.Label14 = New System.Windows.Forms.Label
        Me.txtTelepon = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.dtpProduksi = New System.Windows.Forms.DateTimePicker
        Me.Label12 = New System.Windows.Forms.Label
        Me.browseKaryawan = New System.Windows.Forms.Button
        Me.cmbKaryawan = New System.Windows.Forms.ComboBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.btnRemoveKlemMentah = New System.Windows.Forms.Button
        Me.btnAddKlemMentah = New System.Windows.Forms.Button
        Me.Label9 = New System.Windows.Forms.Label
        Me.lblSatuanKg = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.txtQtyPaku = New System.Windows.Forms.TextBox
        Me.txtQtyKlemMentah = New System.Windows.Forms.TextBox
        Me.browsePaku = New System.Windows.Forms.Button
        Me.cmbQtyPaku = New System.Windows.Forms.ComboBox
        Me.cmbPaku = New System.Windows.Forms.ComboBox
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label7 = New System.Windows.Forms.Label
        Me.cmbQtyKlemMentah = New System.Windows.Forms.ComboBox
        Me.browseKlemMentah = New System.Windows.Forms.Button
        Me.cmbKlemMentah = New System.Windows.Forms.ComboBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label21 = New System.Windows.Forms.Label
        Me.main_tool_strip = New System.Windows.Forms.ToolStrip
        Me.btnSave = New System.Windows.Forms.ToolStripButton
        Me.btnConfirms = New System.Windows.Forms.ToolStripButton
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator
        Me.btnExit = New System.Windows.Forms.ToolStripButton
        Me.gridKlemMentah = New System.Windows.Forms.DataGridView
        Me.clmKdKlem = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmKdPaku = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmUkuranKlem = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmQtyKlemKg = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmQtyKlem = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmUkuranPaku = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmQtyPakuKg = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmQtyPaku = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.gridKlemJadi = New System.Windows.Forms.DataGridView
        Me.clmKdKlemJadi = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmUkuranKlemJadi = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmMerk = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.clmQtyKlemJadi = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Label6 = New System.Windows.Forms.Label
        Me.txtQtyKlemJadi = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.browseKlemJadi = New System.Windows.Forms.Button
        Me.btnRemoveKlemJadi = New System.Windows.Forms.Button
        Me.btnAddKlemJadi = New System.Windows.Forms.Button
        Me.cmbKlemJadi = New System.Windows.Forms.ComboBox
        Me.Label13 = New System.Windows.Forms.Label
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.GroupBox2.SuspendLayout()
        Me.main_tool_strip.SuspendLayout()
        CType(Me.gridKlemMentah, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.gridKlemJadi, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.SuspendLayout()
        '
        'ToolStripSeparator4
        '
        Me.ToolStripSeparator4.Name = "ToolStripSeparator4"
        Me.ToolStripSeparator4.Size = New System.Drawing.Size(6, 54)
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.txtKdProduksi)
        Me.GroupBox2.Controls.Add(Me.lblKodekaryawan)
        Me.GroupBox2.Controls.Add(Me.txtAlamat)
        Me.GroupBox2.Controls.Add(Me.Label14)
        Me.GroupBox2.Controls.Add(Me.txtTelepon)
        Me.GroupBox2.Controls.Add(Me.Label3)
        Me.GroupBox2.Controls.Add(Me.dtpProduksi)
        Me.GroupBox2.Controls.Add(Me.Label12)
        Me.GroupBox2.Controls.Add(Me.browseKaryawan)
        Me.GroupBox2.Controls.Add(Me.cmbKaryawan)
        Me.GroupBox2.Controls.Add(Me.Label1)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 64)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(894, 125)
        Me.GroupBox2.TabIndex = 505
        Me.GroupBox2.TabStop = False
        '
        'txtKdProduksi
        '
        Me.txtKdProduksi.AutoSize = True
        Me.txtKdProduksi.Location = New System.Drawing.Point(155, 22)
        Me.txtKdProduksi.Name = "txtKdProduksi"
        Me.txtKdProduksi.Size = New System.Drawing.Size(0, 13)
        Me.txtKdProduksi.TabIndex = 589
        '
        'lblKodekaryawan
        '
        Me.lblKodekaryawan.AutoSize = True
        Me.lblKodekaryawan.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblKodekaryawan.Location = New System.Drawing.Point(18, 19)
        Me.lblKodekaryawan.Name = "lblKodekaryawan"
        Me.lblKodekaryawan.Size = New System.Drawing.Size(77, 15)
        Me.lblKodekaryawan.TabIndex = 588
        Me.lblKodekaryawan.Text = "No. Produksi"
        '
        'txtAlamat
        '
        Me.txtAlamat.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.txtAlamat.Enabled = False
        Me.txtAlamat.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtAlamat.Location = New System.Drawing.Point(614, 46)
        Me.txtAlamat.MaxLength = 20
        Me.txtAlamat.Name = "txtAlamat"
        Me.txtAlamat.Size = New System.Drawing.Size(236, 22)
        Me.txtAlamat.TabIndex = 587
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label14.Location = New System.Drawing.Point(474, 49)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(102, 15)
        Me.Label14.TabIndex = 586
        Me.Label14.Text = "Alamat Karyawan"
        '
        'txtTelepon
        '
        Me.txtTelepon.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.txtTelepon.Enabled = False
        Me.txtTelepon.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtTelepon.Location = New System.Drawing.Point(614, 74)
        Me.txtTelepon.MaxLength = 20
        Me.txtTelepon.Name = "txtTelepon"
        Me.txtTelepon.Size = New System.Drawing.Size(236, 22)
        Me.txtTelepon.TabIndex = 585
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(474, 77)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(129, 15)
        Me.Label3.TabIndex = 584
        Me.Label3.Text = "Handphone Karyawan"
        '
        'dtpProduksi
        '
        Me.dtpProduksi.Location = New System.Drawing.Point(158, 50)
        Me.dtpProduksi.Name = "dtpProduksi"
        Me.dtpProduksi.Size = New System.Drawing.Size(236, 20)
        Me.dtpProduksi.TabIndex = 1
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label12.Location = New System.Drawing.Point(18, 53)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(52, 15)
        Me.Label12.TabIndex = 569
        Me.Label12.Text = "Tanggal"
        '
        'browseKaryawan
        '
        Me.browseKaryawan.Location = New System.Drawing.Point(371, 85)
        Me.browseKaryawan.Name = "browseKaryawan"
        Me.browseKaryawan.Size = New System.Drawing.Size(23, 21)
        Me.browseKaryawan.TabIndex = 3
        Me.browseKaryawan.Text = "..."
        Me.browseKaryawan.UseVisualStyleBackColor = True
        Me.browseKaryawan.Visible = False
        '
        'cmbKaryawan
        '
        Me.cmbKaryawan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbKaryawan.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbKaryawan.FormattingEnabled = True
        Me.cmbKaryawan.Location = New System.Drawing.Point(158, 83)
        Me.cmbKaryawan.Name = "cmbKaryawan"
        Me.cmbKaryawan.Size = New System.Drawing.Size(207, 24)
        Me.cmbKaryawan.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(18, 85)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(112, 15)
        Me.Label1.TabIndex = 482
        Me.Label1.Text = "Karyawan Produksi"
        '
        'btnRemoveKlemMentah
        '
        Me.btnRemoveKlemMentah.Location = New System.Drawing.Point(271, 133)
        Me.btnRemoveKlemMentah.Name = "btnRemoveKlemMentah"
        Me.btnRemoveKlemMentah.Size = New System.Drawing.Size(99, 23)
        Me.btnRemoveKlemMentah.TabIndex = 13
        Me.btnRemoveKlemMentah.Text = "Hapus Barang"
        Me.btnRemoveKlemMentah.UseVisualStyleBackColor = True
        '
        'btnAddKlemMentah
        '
        Me.btnAddKlemMentah.Location = New System.Drawing.Point(147, 133)
        Me.btnAddKlemMentah.Name = "btnAddKlemMentah"
        Me.btnAddKlemMentah.Size = New System.Drawing.Size(109, 23)
        Me.btnAddKlemMentah.TabIndex = 12
        Me.btnAddKlemMentah.Text = "Tambah Barang"
        Me.btnAddKlemMentah.UseVisualStyleBackColor = True
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(348, 109)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(31, 16)
        Me.Label9.TabIndex = 619
        Me.Label9.Text = "/ Kg"
        '
        'lblSatuanKg
        '
        Me.lblSatuanKg.AutoSize = True
        Me.lblSatuanKg.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblSatuanKg.Location = New System.Drawing.Point(348, 53)
        Me.lblSatuanKg.Name = "lblSatuanKg"
        Me.lblSatuanKg.Size = New System.Drawing.Size(31, 16)
        Me.lblSatuanKg.TabIndex = 615
        Me.lblSatuanKg.Text = "/ Kg"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label10.Location = New System.Drawing.Point(214, 106)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(68, 15)
        Me.Label10.TabIndex = 618
        Me.Label10.Text = "/ Kardus Or"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(214, 50)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(69, 15)
        Me.Label8.TabIndex = 613
        Me.Label8.Text = "/ Karung Or"
        '
        'txtQtyPaku
        '
        Me.txtQtyPaku.Enabled = False
        Me.txtQtyPaku.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtQtyPaku.Location = New System.Drawing.Point(147, 103)
        Me.txtQtyPaku.MaxLength = 20
        Me.txtQtyPaku.Name = "txtQtyPaku"
        Me.txtQtyPaku.Size = New System.Drawing.Size(61, 22)
        Me.txtQtyPaku.TabIndex = 10
        '
        'txtQtyKlemMentah
        '
        Me.txtQtyKlemMentah.Enabled = False
        Me.txtQtyKlemMentah.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtQtyKlemMentah.Location = New System.Drawing.Point(147, 47)
        Me.txtQtyKlemMentah.MaxLength = 20
        Me.txtQtyKlemMentah.Name = "txtQtyKlemMentah"
        Me.txtQtyKlemMentah.Size = New System.Drawing.Size(61, 22)
        Me.txtQtyKlemMentah.TabIndex = 6
        '
        'browsePaku
        '
        Me.browsePaku.Location = New System.Drawing.Point(359, 76)
        Me.browsePaku.Name = "browsePaku"
        Me.browsePaku.Size = New System.Drawing.Size(23, 21)
        Me.browsePaku.TabIndex = 9
        Me.browsePaku.Text = "..."
        Me.browsePaku.UseVisualStyleBackColor = True
        '
        'cmbQtyPaku
        '
        Me.cmbQtyPaku.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbQtyPaku.FormattingEnabled = True
        Me.cmbQtyPaku.Location = New System.Drawing.Point(289, 106)
        Me.cmbQtyPaku.Name = "cmbQtyPaku"
        Me.cmbQtyPaku.Size = New System.Drawing.Size(53, 21)
        Me.cmbQtyPaku.TabIndex = 11
        '
        'cmbPaku
        '
        Me.cmbPaku.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbPaku.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbPaku.FormattingEnabled = True
        Me.cmbPaku.Location = New System.Drawing.Point(146, 74)
        Me.cmbPaku.Name = "cmbPaku"
        Me.cmbPaku.Size = New System.Drawing.Size(207, 24)
        Me.cmbPaku.TabIndex = 8
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(9, 107)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(79, 15)
        Me.Label5.TabIndex = 579
        Me.Label5.Text = "Jumlah Paku"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(10, 77)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(35, 15)
        Me.Label7.TabIndex = 578
        Me.Label7.Text = "Paku"
        '
        'cmbQtyKlemMentah
        '
        Me.cmbQtyKlemMentah.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbQtyKlemMentah.Enabled = False
        Me.cmbQtyKlemMentah.FormattingEnabled = True
        Me.cmbQtyKlemMentah.Location = New System.Drawing.Point(289, 48)
        Me.cmbQtyKlemMentah.Name = "cmbQtyKlemMentah"
        Me.cmbQtyKlemMentah.Size = New System.Drawing.Size(53, 21)
        Me.cmbQtyKlemMentah.TabIndex = 7
        '
        'browseKlemMentah
        '
        Me.browseKlemMentah.Location = New System.Drawing.Point(359, 19)
        Me.browseKlemMentah.Name = "browseKlemMentah"
        Me.browseKlemMentah.Size = New System.Drawing.Size(23, 21)
        Me.browseKlemMentah.TabIndex = 5
        Me.browseKlemMentah.Text = "..."
        Me.browseKlemMentah.UseVisualStyleBackColor = True
        '
        'cmbKlemMentah
        '
        Me.cmbKlemMentah.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbKlemMentah.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbKlemMentah.FormattingEnabled = True
        Me.cmbKlemMentah.Location = New System.Drawing.Point(146, 17)
        Me.cmbKlemMentah.Name = "cmbKlemMentah"
        Me.cmbKlemMentah.Size = New System.Drawing.Size(207, 24)
        Me.cmbKlemMentah.TabIndex = 4
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(9, 50)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(125, 15)
        Me.Label2.TabIndex = 508
        Me.Label2.Text = "Jumlah Klem Mentah"
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label21.Location = New System.Drawing.Point(9, 22)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(81, 15)
        Me.Label21.TabIndex = 505
        Me.Label21.Text = "Klem Mentah"
        '
        'main_tool_strip
        '
        Me.main_tool_strip.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.main_tool_strip.ImageScalingSize = New System.Drawing.Size(32, 32)
        Me.main_tool_strip.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.btnSave, Me.ToolStripSeparator4, Me.btnConfirms, Me.ToolStripSeparator1, Me.btnExit})
        Me.main_tool_strip.Location = New System.Drawing.Point(0, 0)
        Me.main_tool_strip.Name = "main_tool_strip"
        Me.main_tool_strip.Size = New System.Drawing.Size(996, 54)
        Me.main_tool_strip.TabIndex = 506
        Me.main_tool_strip.Text = "Tool Strip"
        '
        'btnSave
        '
        Me.btnSave.Image = CType(resources.GetObject("btnSave.Image"), System.Drawing.Image)
        Me.btnSave.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnSave.Name = "btnSave"
        Me.btnSave.Size = New System.Drawing.Size(51, 51)
        Me.btnSave.Text = "Simpan"
        Me.btnSave.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.btnSave.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'btnConfirms
        '
        Me.btnConfirms.Image = CType(resources.GetObject("btnConfirms.Image"), System.Drawing.Image)
        Me.btnConfirms.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnConfirms.Name = "btnConfirms"
        Me.btnConfirms.Size = New System.Drawing.Size(55, 51)
        Me.btnConfirms.Text = "Confirm"
        Me.btnConfirms.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.btnConfirms.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(6, 54)
        '
        'btnExit
        '
        Me.btnExit.Image = CType(resources.GetObject("btnExit.Image"), System.Drawing.Image)
        Me.btnExit.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnExit.Name = "btnExit"
        Me.btnExit.Size = New System.Drawing.Size(44, 51)
        Me.btnExit.Text = "Keluar"
        Me.btnExit.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.btnExit.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText
        '
        'gridKlemMentah
        '
        Me.gridKlemMentah.AllowUserToAddRows = False
        Me.gridKlemMentah.AllowUserToDeleteRows = False
        Me.gridKlemMentah.AllowUserToOrderColumns = True
        Me.gridKlemMentah.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.gridKlemMentah.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.clmKdKlem, Me.clmKdPaku, Me.clmUkuranKlem, Me.clmQtyKlemKg, Me.clmQtyKlem, Me.clmUkuranPaku, Me.clmQtyPakuKg, Me.clmQtyPaku})
        Me.gridKlemMentah.Location = New System.Drawing.Point(435, 195)
        Me.gridKlemMentah.Name = "gridKlemMentah"
        Me.gridKlemMentah.Size = New System.Drawing.Size(544, 180)
        Me.gridKlemMentah.TabIndex = 509
        '
        'clmKdKlem
        '
        Me.clmKdKlem.HeaderText = "No. Klem"
        Me.clmKdKlem.Name = "clmKdKlem"
        Me.clmKdKlem.ReadOnly = True
        Me.clmKdKlem.Resizable = System.Windows.Forms.DataGridViewTriState.[True]
        Me.clmKdKlem.Visible = False
        '
        'clmKdPaku
        '
        Me.clmKdPaku.HeaderText = "No. Paku"
        Me.clmKdPaku.Name = "clmKdPaku"
        Me.clmKdPaku.Visible = False
        '
        'clmUkuranKlem
        '
        Me.clmUkuranKlem.HeaderText = "Ukuran Klem"
        Me.clmUkuranKlem.Name = "clmUkuranKlem"
        Me.clmUkuranKlem.ReadOnly = True
        '
        'clmQtyKlemKg
        '
        Me.clmQtyKlemKg.HeaderText = "Jumlah Klem ( Kg )"
        Me.clmQtyKlemKg.Name = "clmQtyKlemKg"
        Me.clmQtyKlemKg.ReadOnly = True
        Me.clmQtyKlemKg.Visible = False
        Me.clmQtyKlemKg.Width = 120
        '
        'clmQtyKlem
        '
        Me.clmQtyKlem.HeaderText = "Jumlah Klem ( Karung ) *"
        Me.clmQtyKlem.Name = "clmQtyKlem"
        Me.clmQtyKlem.Width = 150
        '
        'clmUkuranPaku
        '
        Me.clmUkuranPaku.HeaderText = "Ukuran Paku"
        Me.clmUkuranPaku.Name = "clmUkuranPaku"
        Me.clmUkuranPaku.ReadOnly = True
        '
        'clmQtyPakuKg
        '
        Me.clmQtyPakuKg.HeaderText = "Jumlah Paku ( Kg )"
        Me.clmQtyPakuKg.Name = "clmQtyPakuKg"
        Me.clmQtyPakuKg.ReadOnly = True
        Me.clmQtyPakuKg.Visible = False
        Me.clmQtyPakuKg.Width = 120
        '
        'clmQtyPaku
        '
        Me.clmQtyPaku.HeaderText = "Jumlah Paku ( Kardus ) *"
        Me.clmQtyPaku.Name = "clmQtyPaku"
        Me.clmQtyPaku.Width = 150
        '
        'gridKlemJadi
        '
        Me.gridKlemJadi.AllowUserToAddRows = False
        Me.gridKlemJadi.AllowUserToDeleteRows = False
        Me.gridKlemJadi.AllowUserToOrderColumns = True
        Me.gridKlemJadi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.gridKlemJadi.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.clmKdKlemJadi, Me.clmUkuranKlemJadi, Me.clmMerk, Me.clmQtyKlemJadi})
        Me.gridKlemJadi.Location = New System.Drawing.Point(435, 381)
        Me.gridKlemJadi.Name = "gridKlemJadi"
        Me.gridKlemJadi.Size = New System.Drawing.Size(544, 207)
        Me.gridKlemJadi.TabIndex = 620
        '
        'clmKdKlemJadi
        '
        Me.clmKdKlemJadi.HeaderText = "No. Klem"
        Me.clmKdKlemJadi.Name = "clmKdKlemJadi"
        Me.clmKdKlemJadi.ReadOnly = True
        Me.clmKdKlemJadi.Resizable = System.Windows.Forms.DataGridViewTriState.[True]
        Me.clmKdKlemJadi.Visible = False
        '
        'clmUkuranKlemJadi
        '
        Me.clmUkuranKlemJadi.HeaderText = "Ukuran Klem"
        Me.clmUkuranKlemJadi.Name = "clmUkuranKlemJadi"
        Me.clmUkuranKlemJadi.ReadOnly = True
        '
        'clmMerk
        '
        Me.clmMerk.HeaderText = "Merk"
        Me.clmMerk.Name = "clmMerk"
        Me.clmMerk.ReadOnly = True
        '
        'clmQtyKlemJadi
        '
        Me.clmQtyKlemJadi.HeaderText = "Jumlah Klem ( Pack )"
        Me.clmQtyKlemJadi.Name = "clmQtyKlemJadi"
        Me.clmQtyKlemJadi.Width = 140
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.txtQtyKlemJadi)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.browseKlemJadi)
        Me.GroupBox1.Controls.Add(Me.btnRemoveKlemJadi)
        Me.GroupBox1.Controls.Add(Me.btnAddKlemJadi)
        Me.GroupBox1.Controls.Add(Me.cmbKlemJadi)
        Me.GroupBox1.Controls.Add(Me.Label13)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 381)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(417, 123)
        Me.GroupBox1.TabIndex = 621
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Klem Jadi yang akan di hasilkan"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(223, 62)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(40, 15)
        Me.Label6.TabIndex = 618
        Me.Label6.Text = "/ Pack"
        '
        'txtQtyKlemJadi
        '
        Me.txtQtyKlemJadi.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtQtyKlemJadi.Location = New System.Drawing.Point(156, 59)
        Me.txtQtyKlemJadi.MaxLength = 20
        Me.txtQtyKlemJadi.Name = "txtQtyKlemJadi"
        Me.txtQtyKlemJadi.Size = New System.Drawing.Size(61, 22)
        Me.txtQtyKlemJadi.TabIndex = 16
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(25, 61)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(48, 15)
        Me.Label4.TabIndex = 579
        Me.Label4.Text = "Jumlah"
        '
        'browseKlemJadi
        '
        Me.browseKlemJadi.Location = New System.Drawing.Point(371, 30)
        Me.browseKlemJadi.Name = "browseKlemJadi"
        Me.browseKlemJadi.Size = New System.Drawing.Size(23, 21)
        Me.browseKlemJadi.TabIndex = 15
        Me.browseKlemJadi.Text = "..."
        Me.browseKlemJadi.UseVisualStyleBackColor = True
        '
        'btnRemoveKlemJadi
        '
        Me.btnRemoveKlemJadi.Location = New System.Drawing.Point(223, 87)
        Me.btnRemoveKlemJadi.Name = "btnRemoveKlemJadi"
        Me.btnRemoveKlemJadi.Size = New System.Drawing.Size(61, 23)
        Me.btnRemoveKlemJadi.TabIndex = 18
        Me.btnRemoveKlemJadi.Text = "Hapus"
        Me.btnRemoveKlemJadi.UseVisualStyleBackColor = True
        '
        'btnAddKlemJadi
        '
        Me.btnAddKlemJadi.Location = New System.Drawing.Point(156, 87)
        Me.btnAddKlemJadi.Name = "btnAddKlemJadi"
        Me.btnAddKlemJadi.Size = New System.Drawing.Size(61, 23)
        Me.btnAddKlemJadi.TabIndex = 17
        Me.btnAddKlemJadi.Text = "Tambah"
        Me.btnAddKlemJadi.UseVisualStyleBackColor = True
        '
        'cmbKlemJadi
        '
        Me.cmbKlemJadi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbKlemJadi.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbKlemJadi.FormattingEnabled = True
        Me.cmbKlemJadi.ItemHeight = 16
        Me.cmbKlemJadi.Location = New System.Drawing.Point(158, 28)
        Me.cmbKlemJadi.Name = "cmbKlemJadi"
        Me.cmbKlemJadi.Size = New System.Drawing.Size(207, 24)
        Me.cmbKlemJadi.TabIndex = 571
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label13.Location = New System.Drawing.Point(28, 31)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(62, 15)
        Me.Label13.TabIndex = 505
        Me.Label13.Text = "Klem Jadi"
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.cmbKlemMentah)
        Me.GroupBox3.Controls.Add(Me.Label5)
        Me.GroupBox3.Controls.Add(Me.Label9)
        Me.GroupBox3.Controls.Add(Me.Label7)
        Me.GroupBox3.Controls.Add(Me.cmbPaku)
        Me.GroupBox3.Controls.Add(Me.lblSatuanKg)
        Me.GroupBox3.Controls.Add(Me.cmbQtyKlemMentah)
        Me.GroupBox3.Controls.Add(Me.cmbQtyPaku)
        Me.GroupBox3.Controls.Add(Me.Label10)
        Me.GroupBox3.Controls.Add(Me.browseKlemMentah)
        Me.GroupBox3.Controls.Add(Me.browsePaku)
        Me.GroupBox3.Controls.Add(Me.btnRemoveKlemMentah)
        Me.GroupBox3.Controls.Add(Me.Label2)
        Me.GroupBox3.Controls.Add(Me.btnAddKlemMentah)
        Me.GroupBox3.Controls.Add(Me.txtQtyKlemMentah)
        Me.GroupBox3.Controls.Add(Me.Label8)
        Me.GroupBox3.Controls.Add(Me.Label21)
        Me.GroupBox3.Controls.Add(Me.txtQtyPaku)
        Me.GroupBox3.Location = New System.Drawing.Point(12, 195)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(417, 165)
        Me.GroupBox3.TabIndex = 622
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Klem Mentah"
        '
        'FormProduksiManagement
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(996, 649)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.gridKlemJadi)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.gridKlemMentah)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.main_tool_strip)
        Me.Name = "FormProduksiManagement"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Produksi Produksi"
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.main_tool_strip.ResumeLayout(False)
        Me.main_tool_strip.PerformLayout()
        CType(Me.gridKlemMentah, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.gridKlemJadi, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btnExit As System.Windows.Forms.ToolStripButton
    Friend WithEvents btnSave As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator4 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents btnRemoveKlemMentah As System.Windows.Forms.Button
    Friend WithEvents btnAddKlemMentah As System.Windows.Forms.Button
    Friend WithEvents dtpProduksi As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents browseKlemMentah As System.Windows.Forms.Button
    Friend WithEvents cmbKlemMentah As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label21 As System.Windows.Forms.Label
    Friend WithEvents browseKaryawan As System.Windows.Forms.Button
    Friend WithEvents cmbKaryawan As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents main_tool_strip As System.Windows.Forms.ToolStrip
    Friend WithEvents gridKlemMentah As System.Windows.Forms.DataGridView
    Friend WithEvents btnConfirms As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents txtAlamat As System.Windows.Forms.TextBox
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents txtTelepon As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmbQtyKlemMentah As System.Windows.Forms.ComboBox
    Friend WithEvents cmbQtyPaku As System.Windows.Forms.ComboBox
    Friend WithEvents browsePaku As System.Windows.Forms.Button
    Friend WithEvents cmbPaku As System.Windows.Forms.ComboBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents txtKdProduksi As System.Windows.Forms.Label
    Friend WithEvents lblKodekaryawan As System.Windows.Forms.Label
    Friend WithEvents lblSatuanKg As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents txtQtyKlemMentah As System.Windows.Forms.TextBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents txtQtyPaku As System.Windows.Forms.TextBox
    Friend WithEvents clmKdKlem As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmKdPaku As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmUkuranKlem As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmQtyKlemKg As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmQtyKlem As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmUkuranPaku As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmQtyPakuKg As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmQtyPaku As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents gridKlemJadi As System.Windows.Forms.DataGridView
    Friend WithEvents clmKdKlemJadi As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmUkuranKlemJadi As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmMerk As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents clmQtyKlemJadi As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents txtQtyKlemJadi As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents browseKlemJadi As System.Windows.Forms.Button
    Friend WithEvents btnRemoveKlemJadi As System.Windows.Forms.Button
    Friend WithEvents btnAddKlemJadi As System.Windows.Forms.Button
    Friend WithEvents cmbKlemJadi As System.Windows.Forms.ComboBox
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
End Class
