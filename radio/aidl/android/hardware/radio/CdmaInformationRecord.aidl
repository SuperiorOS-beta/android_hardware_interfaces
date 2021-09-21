/*
 * Copyright (C) 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.radio;

import android.hardware.radio.CdmaDisplayInfoRecord;
import android.hardware.radio.CdmaLineControlInfoRecord;
import android.hardware.radio.CdmaNumberInfoRecord;
import android.hardware.radio.CdmaRedirectingNumberInfoRecord;
import android.hardware.radio.CdmaSignalInfoRecord;
import android.hardware.radio.CdmaT53AudioControlInfoRecord;
import android.hardware.radio.CdmaT53ClirInfoRecord;

@VintfStability
parcelable CdmaInformationRecord {
    /**
     * Names of the CDMA info records (C.S0005 section 3.7.5)
     */
    const int NAME_DISPLAY = 0;
    const int NAME_CALLED_PARTY_NUMBER = 1;
    const int NAME_CALLING_PARTY_NUMBER = 2;
    const int NAME_CONNECTED_NUMBER = 3;
    const int NAME_SIGNAL = 4;
    const int NAME_REDIRECTING_NUMBER = 5;
    const int NAME_LINE_CONTROL = 6;
    const int NAME_EXTENDED_DISPLAY = 7;
    const int NAME_T53_CLIR = 8;
    const int NAME_T53_RELEASE = 9;
    const int NAME_T53_AUDIO_CONTROL = 10;

    /**
     * Based on CdmaInfoRecName, only one of the below vectors must have size = 1.
     * All other vectors must have size 0.
     * Values are NAME_
     */
    int name;
    /**
     * Display and extended display info rec
     */
    CdmaDisplayInfoRecord[] display;
    /**
     * Called party number, calling party number, connected number info rec
     */
    CdmaNumberInfoRecord[] number;
    /**
     * Signal info rec
     */
    CdmaSignalInfoRecord[] signal;
    /**
     * Redirecting number info rec
     */
    CdmaRedirectingNumberInfoRecord[] redir;
    /**
     * Line control info rec
     */
    CdmaLineControlInfoRecord[] lineCtrl;
    /**
     * T53 CLIR info rec
     */
    CdmaT53ClirInfoRecord[] clir;
    /**
     * T53 Audio Control info rec
     */
    CdmaT53AudioControlInfoRecord[] audioCtrl;
}