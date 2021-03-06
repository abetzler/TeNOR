#
# TeNOR - HOT Generator
#
# Copyright 2014-2016 i2CAT Foundation, Portugal Telecom Inovação
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class Port < Resource

	# Initializes Port object
	#
	# @param [String] resource_name the Port resource name
	# @param [String] network Network name this port belongs to
	# @param [String] security_group_id the ID of the T-NOVA security group
	def initialize(resource_name, network, security_group_id)
		@type = 'OS::Neutron::Port'
		security_group_id.nil? ? @properties = {'network' => network} : @properties = {'network' => network, 'security_groups' => [security_group_id]}
		super(resource_name, @type, @properties)
	end
end