.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 34
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const v32, 0x7f08051e

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "phone_language"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f080521

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "spellcheckers_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f080835

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v32

    if-eqz v32, :cond_1

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "user_dict_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f08053a

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f080520

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "current_input_method"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f08055e

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v6, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iput-object v6, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v32, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v12}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_3

    const/16 v17, 0x0

    :goto_0
    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_2

    const/16 v32, 0x2c

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v32, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/input/InputManager;

    const/4 v9, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    const/4 v10, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_a

    aget v32, v8, v10

    invoke-static/range {v32 .. v32}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v32

    if-nez v32, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v32

    if-nez v32, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v21

    :goto_5
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v30

    :goto_6
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    :cond_9
    const v32, 0x7f080538

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_6

    :cond_a
    if-eqz v9, :cond_b

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "builtin_keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f08056b

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "voice_input_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f08069a

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v31, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v31 .. v31}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_c

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "tts_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f0806a1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "pointer_settings_category"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f080530

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "pointer_speed"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f080531

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v32

    if-eqz v32, :cond_d

    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v32, "vibrate_input_devices"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v32, 0x7f080533

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v32, 0x7f080534

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v32, 0x7f080534

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object v14
.end method
